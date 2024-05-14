import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
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
    required String username,
    required String password,
    required int userType_id,
  }) =_ClientWantsToLogin;

  factory ClientWantsToLogin.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToLoginFromJson(json);


}