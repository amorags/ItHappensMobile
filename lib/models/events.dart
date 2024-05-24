import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'entities.dart';
part 'events.freezed.dart';
part 'events.g.dart';

sealed class BaseEvent {}

abstract class ClientEvent extends BaseEvent {
  Map<String, dynamic> toJson();
}

@freezed
class ClientWantsToSignup extends ClientEvent with _$ClientWantsToSignup {
  static const String name = "ClientWantsToSignup";
  const factory ClientWantsToSignup({
    required String eventType,
    required String username,
    required String firstname,
    required String lastname,
    required String password,
    required String email,
    required int phone,
    required int userType_id
  }) = _ClientWantsToSignup;

  factory ClientWantsToSignup.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToSignupFromJson(json);
}
@freezed
class ClientWantsToLogin extends ClientEvent with _$ClientWantsToLogin {
  static const String name = "ClientWantsToLogin";

  const factory ClientWantsToLogin({
    required String eventType,
    required String email,
    required String password,
    required int userType_id,
  }) =_ClientWantsToLogin;

  factory ClientWantsToLogin.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToLoginFromJson(json);


}
@freezed
class ClientWantsToRetrieveEventFeed extends ClientEvent with _$ClientWantsToRetrieveEventFeed {
  static const String name = "ClientWantsToRetrieveEventFeed";

  const factory ClientWantsToRetrieveEventFeed({
    required int Event_Id,
    required String Name,
    required String Location,
    required String ImageUrl,
    required String Description,
    required DateTime Date,
    required int Amount,
    required int Association_Id,
    required int Booking_Id
}) = _ClientWantsToRetrieveEventFeed;

 factory ClientWantsToRetrieveEventFeed.fromJson(Map<String, Object?> json) =>
_$ClientWantsToRetrieveEventFeed(json);
}

class ServerEvent extends BaseEvent {
  static ServerEvent fromJson(Map<String, Object?> json) {
    final type = json['eventType'];
    return(type){
      ServerAddsEventFeedToClient => ServerAddsEventFeedToClient.fromJson(json)
     _ => throw "Unknown event type $type in $json"
    };
    }
}