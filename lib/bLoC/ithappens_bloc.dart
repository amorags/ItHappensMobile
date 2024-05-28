import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../models/entities.dart';
import 'ithappens_state.dart'; // Import your state file
import 'package:it_happens/models/events.dart'; // Import your events file
import 'package:shared_preferences/shared_preferences.dart';

class ItHappensBloc extends Bloc<BaseEvent, ItHappensState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;
  String? _jwt;
  String? _userType;

  ItHappensBloc({required WebSocketChannel channel})
      : _channel = channel,
        super(ItHappensState.empty()) {
    // Handler for client events
    on<ClientEvent>(_onClientEvent);

    // Handler for server events
    on<ServerSendsEventFeed>(_onServerSendsEventFeed);

    // Listen to WebSocket messages
    _channelSubscription = _channel.stream.listen(_onServerMessage);
  }

  @override
  Future<void> close() async {
    _channelSubscription.cancel();
    super.close();
  }

  /// Sends ClientWantsToRegister event to server
  void signUp({
    required String username,
    required String firstname,
    required String lastname,
    required String password,
    required String email,
    required int phone,
    required int userType_id,
  }) {
    add(ClientEvent.clientWantsToSignup(
      username: username,
      firstname: firstname,
      lastname: lastname,
      password: password,
      email: email,
      phone: phone,
      userType_id: userType_id,
    ));
  }

  /// Sends ClientWantsToLogin event to server
  void login({
    required String email,
    required String password,
    required int userType_id,
  }) {
    add(ClientEvent.ClientWantsToLogin(
      email: email,
      password: password,
      userType_id: userType_id,
    ));
  }

  void getEventFeed() {
    add(ClientEvent.ClientWantsToGetEventFeed());
    print("Request to retrieve events sent");
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<ItHappensState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
    print("Sent event to server: ${event.toJson()}");
  }

  void _onServerMessage(dynamic message) async {
    print('Received message from server: $message');
    final decodedMessage = jsonDecode(message);

    if (decodedMessage.containsKey('token')) {
      final token = decodedMessage['token'];
      print('Token received: $token');
      _jwt = token;

      // Decode the token to extract user type
      final payload = _parseJwt(token);
      final userType = payload['role'];
      print('User type extracted from token: $userType');

      _userType = userType;

      // Store the token and user type locally
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt_token', token);
      await prefs.setString('user_type', userType);
      print('Token and user type stored locally');

      // Update the state
      emit(ItHappensState.loggedIn(token: token, userType: userType, events: []));
    } else if (decodedMessage.containsKey('EventsFeedQueries')) {
      try {
        final events = (decodedMessage['EventsFeedQueries'] as List)
            .map((e) => Event.fromJson(e))
            .toList();
        add(ServerEvent.serverSendsEventFeed(EventsFeedQueries: events));
        print('Events received from server: $events');
      } catch (e) {
        print('Error deserializing events: $e');
        emit(ItHappensState.error(message: 'Error deserializing events: $e'));
      }
    } else {
      print('Error in message: ${decodedMessage.toString()}');
      emit(ItHappensState.error(message: decodedMessage.toString()));
    }
  }

  Map<String, dynamic> _parseJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('Invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('Invalid payload');
    }

    return payloadMap;
  }

  String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!');
    }

    return utf8.decode(base64Url.decode(output));
  }

  Future<String?> getJwtToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwt_token');
  }

  Future<String?> getUserType() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_type');
  }

  FutureOr<void> _onServerSendsEventFeed(ServerSendsEventFeed event, Emitter<ItHappensState> emit) {
    print('Received ServerSendsEventFeed: $event'); // Log the received message
    // Extract the list of events from the ServerSendsEventFeed object
    final List<Event> events = event.EventsFeedQueries;

    if (events.isEmpty) {
      // Log that no events were received
      print('No events received.');
    } else {
      // Log the events
      print('Events received: $events');
    }

    // Logic for processing and storing the list of events
    // For example, you can update the state with the received events
    emit(ItHappensState.loggedIn(token: _jwt!, userType: _userType!, events: events));
  }
}
