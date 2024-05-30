import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'entities.dart';
part 'events.freezed.dart';
part 'events.g.dart';

sealed class BaseEvent {}


@Freezed(unionKey: 'eventType', unionValueCase: FreezedUnionCase.pascal)
sealed class ClientEvent with _$ClientEvent implements BaseEvent {
  factory ClientEvent.clientWantsToSignup({
    required String username,
    required String firstname,
    required String lastname,
    required String password,
    required String email,
    required int phone,
    required int userType_id
  }) = ClientWantsToSignup;

  factory ClientEvent.ClientWantsToLogin({
    required String email,
    required String password,
    required int userType_id
  }) = ClientWantsToLogin;

  factory ClientEvent.ClientWantsToAttendEvent({
    required int userId,
    required int eventId
}) = ClientWantsToAttendEvent;


  factory ClientEvent.ClientWantsToGetEventFeed() = ClientWantsToGetEventFeed;

  factory ClientEvent.ClientWantsToGetAssociationFeed() = ClientWantsToGetAssociationFeed;

  factory ClientEvent.ClientWantsEventIdsForUserId({required int userId}) = ClientWantsEventIdsForUserId;

  factory ClientEvent.fromJson(Map<String, dynamic> json) =>
      _$ClientEventFromJson(json);
}


@Freezed(unionKey: 'eventType', unionValueCase: FreezedUnionCase.pascal)
sealed class ServerEvent with _$ServerEvent implements BaseEvent {
  const factory ServerEvent.serverSendsEventFeed({
    required List<Event> EventsFeedQueries,
  }) = ServerSendsEventFeed;

  factory ServerEvent.serverSendsAssociationFeed({
    required List<Association> AssociationsFeedQueries,
  }) = ServerSendsAssociationFeed;

  factory ServerEvent.fromJson(Map<String, dynamic> json) =>
      _$ServerEventFromJson(json);
}
