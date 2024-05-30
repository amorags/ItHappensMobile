// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToSignupImpl _$$ClientWantsToSignupImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToSignupImpl(
      username: json['username'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      phone: (json['phone'] as num).toInt(),
      userType_id: (json['userType_id'] as num).toInt(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToSignupImplToJson(
        _$ClientWantsToSignupImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'password': instance.password,
      'email': instance.email,
      'phone': instance.phone,
      'userType_id': instance.userType_id,
      'eventType': instance.$type,
    };

_$ClientWantsToLoginImpl _$$ClientWantsToLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLoginImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      userType_id: (json['userType_id'] as num).toInt(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToLoginImplToJson(
        _$ClientWantsToLoginImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'userType_id': instance.userType_id,
      'eventType': instance.$type,
    };

_$ClientWantsToAttendEventImpl _$$ClientWantsToAttendEventImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToAttendEventImpl(
      userId: (json['userId'] as num).toInt(),
      eventId: (json['eventId'] as num).toInt(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToAttendEventImplToJson(
        _$ClientWantsToAttendEventImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'eventId': instance.eventId,
      'eventType': instance.$type,
    };

_$ClientWantsToGetEventIdsImpl _$$ClientWantsToGetEventIdsImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToGetEventIdsImpl(
      userId: (json['userId'] as num).toInt(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToGetEventIdsImplToJson(
        _$ClientWantsToGetEventIdsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'eventType': instance.$type,
    };

_$ClientWantsToGetEventFeedImpl _$$ClientWantsToGetEventFeedImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToGetEventFeedImpl(
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsToGetEventFeedImplToJson(
        _$ClientWantsToGetEventFeedImpl instance) =>
    <String, dynamic>{
      'eventType': instance.$type,
    };

_$ClientWantsToGetAssociationFeedImpl
    _$$ClientWantsToGetAssociationFeedImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsToGetAssociationFeedImpl(
          $type: json['eventType'] as String?,
        );

Map<String, dynamic> _$$ClientWantsToGetAssociationFeedImplToJson(
        _$ClientWantsToGetAssociationFeedImpl instance) =>
    <String, dynamic>{
      'eventType': instance.$type,
    };

_$ClientWantsEventIdsForUserIdImpl _$$ClientWantsEventIdsForUserIdImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsEventIdsForUserIdImpl(
      userId: (json['userId'] as num).toInt(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ClientWantsEventIdsForUserIdImplToJson(
        _$ClientWantsEventIdsForUserIdImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'eventType': instance.$type,
    };

_$ServerSendsEventFeedImpl _$$ServerSendsEventFeedImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsEventFeedImpl(
      EventsFeedQueries: (json['EventsFeedQueries'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ServerSendsEventFeedImplToJson(
        _$ServerSendsEventFeedImpl instance) =>
    <String, dynamic>{
      'EventsFeedQueries': instance.EventsFeedQueries,
      'eventType': instance.$type,
    };

_$ServerSendsEventIdsImpl _$$ServerSendsEventIdsImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsEventIdsImpl(
      eventIdsQueries: (json['eventIdsQueries'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ServerSendsEventIdsImplToJson(
        _$ServerSendsEventIdsImpl instance) =>
    <String, dynamic>{
      'eventIdsQueries': instance.eventIdsQueries,
      'eventType': instance.$type,
    };

_$ServerSendsAssociationFeedImpl _$$ServerSendsAssociationFeedImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsAssociationFeedImpl(
      AssociationsFeedQueries:
          (json['AssociationsFeedQueries'] as List<dynamic>)
              .map((e) => Association.fromJson(e as Map<String, dynamic>))
              .toList(),
      $type: json['eventType'] as String?,
    );

Map<String, dynamic> _$$ServerSendsAssociationFeedImplToJson(
        _$ServerSendsAssociationFeedImpl instance) =>
    <String, dynamic>{
      'AssociationsFeedQueries': instance.AssociationsFeedQueries,
      'eventType': instance.$type,
    };
