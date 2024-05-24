import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
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

    //Handlers for Server Events
    on<ServerSendsEventFeed>(_onServerSendsEventFeed);

    // Listen to WebSocket messages
    _channelSubscription = _channel.stream.listen(_onServerMessage);
    // Feed deserialized events from server into this bloc

  }

  @override
  Future<void> close() async {
    _channelSubscription.cancel();
    super.close();
  }

  /// Sends ClientWantsToRegister event to server
  void signUp({required String username, required String firstname, required String lastname, required String password, required String email, required int phone, required int userType_id}) {
    add(ClientWantsToSignup(
        username: username,
        firstname: firstname,
        lastname: lastname,
        password: password,
        email: email,
        phone: phone,
        userType_id: userType_id
    ));
  }

  /// Sends ClientWantsToLogin event to server
  void login({required String email, required String password, required int userType_id}) {
    add(ClientWantsToLogin(
        email: email,
        password: password,
        userType_id: userType_id
    ));
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<ItHappensState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  void _onServerMessage(message) async {
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
      emit(ItHappensState.loggedIn(token: token, userType: userType));
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

  }
}
