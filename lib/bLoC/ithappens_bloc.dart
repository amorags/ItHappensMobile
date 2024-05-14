import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'ithappens_state.dart'; // Import your state file
import 'package:it_happens/models/events.dart'; // Import your events file

class ItHappensBloc extends Bloc<BaseEvent, ItHappensState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;
  String? _jwt;


  ItHappensBloc({required channel})
      : _channel = channel,
        super(ItHappensState.empty()) {
    // Handler for client events
    on<ClientEvent>(_onClientEvent);


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
      eventType: ClientWantsToSignup.name,
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
  void login({required String email,  required String password, required int userType_id}) {
    add(ClientWantsToLogin(
        eventType: ClientWantsToLogin.name,
        email: email,
        password: password,
        userType_id: userType_id
    ));
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<ItHappensState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }
}
