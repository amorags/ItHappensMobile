import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../models/events.dart' as events;
import '../models/events.dart';
import 'ithappens_state.dart';
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
    on<events.ClientEvent>(_onClientEvent);

    // Handler for server events
    on<events.ServerSendsEventFeed>(_onServerSendsEventFeed);

    // Listen to WebSocket messages
    _channelSubscription = _channel.stream.listen(_onServerMessage);
  }

  @override
  Future<void> close() async {
    _channelSubscription.cancel();
    super.close();
  }

  void signUp({
    required String username,
    required String firstname,
    required String lastname,
    required String password,
    required String email,
    required int phone,
    required int userType_id,
  }) {
    add(events.ClientEvent.clientWantsToSignup(
      username: username,
      firstname: firstname,
      lastname: lastname,
      password: password,
      email: email,
      phone: phone,
      userType_id: userType_id,
    ));
  }

  void login({
    required String email,
    required String password,
    required int userType_id,
  }) {
    add(events.ClientEvent.ClientWantsToLogin(
      email: email,
      password: password,
      userType_id: userType_id,
    ));
  }

  void getEventFeed() {
    add(events.ClientEvent.ClientWantsToGetEventFeed());
    print("Request to retrieve events sent");
  }

  FutureOr<void> _onClientEvent(events.ClientEvent event,
      Emitter<ItHappensState> emit) {
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

      final payload = _parseJwt(token);
      final userType = payload['role'];
      print('User type extracted from token: $userType');

      _userType = userType;

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt_token', token);
      await prefs.setString('user_type', userType);
      print('Token and user type stored locally');

      emit(ItHappensState.loggedIn(
          token: token, userType: userType, events: []));
    } else if (decodedMessage.containsKey('EventsFeedQueries')) {
      try {
        final eventsList = (decodedMessage['EventsFeedQueries'] as List)
            .map((e) => events.Event.fromJson(e))
            .toList();
        add(events.ServerEvent.serverSendsEventFeed(
            EventsFeedQueries: eventsList));
        print('Events received from server: $eventsList');
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

  FutureOr<void> _onServerSendsEventFeed(events.ServerSendsEventFeed event,
      Emitter<ItHappensState> emit) {
    print('Received ServerSendsEventFeed: $event');
    final eventsList = event.EventsFeedQueries;

    if (eventsList.isEmpty) {
      print('No events received.');
    } else {
      print('Events received: $eventsList');
    }

    emit(ItHappensState.loggedIn(
        token: _jwt!, userType: _userType!, events: eventsList));
  }
}
