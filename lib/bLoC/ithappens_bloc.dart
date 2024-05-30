import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../models/events.dart';
import '../models/entities.dart';
import 'ithappens_state.dart'; // Import your state file
import 'package:shared_preferences/shared_preferences.dart';


class ItHappensBloc extends Bloc<BaseEvent, ItHappensState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;
  String? _jwt;
  String? _userType;
  String? _userId;

  ItHappensBloc({required WebSocketChannel channel})
      : _channel = channel,
        super(const ItHappensState.empty()) {
    // Handler for client events
    on<ClientEvent>(_onClientEvent);

    // Handler for server events
    on<ServerSendsEventFeed>(_onServerSendsEventFeed);

    // Listen to WebSocket messages
    _channelSubscription = _channel.stream.listen(_onServerMessage);
  }

  @override
  Future<void> close() async {
    await _channelSubscription.cancel();
    return super.close();
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

  void attend({
    required int userId,
    required int eventId
  }) {
    add(ClientEvent.ClientWantsToAttendEvent(userId: userId, eventId: eventId));
  }

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

  void getAssociationFeed() {
    add(ClientEvent.ClientWantsToGetAssociationFeed());
    print("Request to retrieve associations sent");
  }
  void getUserEvents(int userId) {
    add(ClientEvent.ClientWantsEventIdsForUserId(userId: userId));
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<ItHappensState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
    print("Sent event to server: ${event.toJson()}");
  }

  void _onServerMessage(dynamic message) async {
    print('Received message from server: $message');
    final decodedMessage = jsonDecode(message);

    if (decodedMessage.containsKey('token')) {final token = decodedMessage['token'];
    print('Token received: $token');
    _jwt = token;

    // Decode the token to extract user type
    final payload = _parseJwt(token);
    final userType = payload['role'];
    final userId = payload['nameid'];
    print('User type extracted from token: $userType');
    print('UserId extracted from user: $userId');

    _userType = userType;
    _userId = userId;

    // Store the token and user type locally
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('jwt_token', token);
    await prefs.setString('user_type', userType);
    await prefs.setString('user_id', userId);
    print('Token and user type stored locally');

    // Update the state
    emit(ItHappensState.loggedIn(token: token, userType: userType, events: []));
    } else if (decodedMessage.containsKey('EventsFeedQueries')) {
      try {
        List<dynamic> eventsFeedQueries = decodedMessage['EventsFeedQueries'];
        List<Event> events = _convertToEventList(eventsFeedQueries);


        // Check if the events list is empty
        if (events.isEmpty) {
          emit(ItHappensState.error(message: 'No events found'));
          return;
        }

        emit(ItHappensState.loaded(events: events));
        print("lamoitworked");
        print("Events List: $events"); // Print events list
      } catch (e) {
        print('Error deserializing events: $e');
        emit(ItHappensState.error(message: 'Failed to parse events'));
      }}
      else if (decodedMessage.containsKey('AssociationFeedQueries')) {
      try {

        List<dynamic> associationsFeedQueries = decodedMessage['AssociationFeedQueries'];
        List<Association> associations = _convertToAssociationList(associationsFeedQueries);

        // Check if the events list is empty
        if (associations.isEmpty){
          emit(ItHappensState.error(message: 'No Associations found'));
        }

        emit(ItHappensState.loadedAss(associations: associations));
        print("lamoitworked again");
        print("Associations List: $associations"); // Print events list
      } catch (e) {
        print('Error deserializing events: $e');
        emit(ItHappensState.error(message: 'Failed to parse events'));
      }
    } else {
      print('Error in message: ${decodedMessage.toString()}');
      emit(ItHappensState.error(message: decodedMessage.toString()));
    }
  }

  List<Event> _convertToEventList(List<dynamic> eventsFeedQueries) {
    return eventsFeedQueries.map((json) => Event.fromJson(json)).toList();
  }

  List<Association> _convertToAssociationList(List<dynamic> associationsFeedQueries) {
    return associationsFeedQueries.map((json) => Association.fromJson(json)).toList();
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

  Future<String?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_id');
  }

  FutureOr<void> _onServerSendsEventFeed(ServerSendsEventFeed event, Emitter<ItHappensState> emit) {
    emit(ItHappensState.loaded(events: event.EventsFeedQueries));
  }

  FutureOr<void> _onServerSendsAssociationFeed(ServerSendsAssociationFeed association, Emitter<ItHappensState> emit) {
    emit(ItHappensState.loadedAss(associations: association.AssociationsFeedQueries));
  }
}


