// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      Event_Id: (json['Event_Id'] as num).toInt(),
      Name: json['Name'] as String,
      Location: json['Location'] as String,
      ImageUrl: json['ImageUrl'] as String,
      Description: json['Description'] as String,
      Date: DateTime.parse(json['Date'] as String),
      Amount: (json['Amount'] as num).toInt(),
      Association_Id: (json['Association_Id'] as num).toInt(),
      Booking_Id: (json['Booking_Id'] as num).toInt(),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'Event_Id': instance.Event_Id,
      'Name': instance.Name,
      'Location': instance.Location,
      'ImageUrl': instance.ImageUrl,
      'Description': instance.Description,
      'Date': instance.Date.toIso8601String(),
      'Amount': instance.Amount,
      'Association_Id': instance.Association_Id,
      'Booking_Id': instance.Booking_Id,
    };

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

_$ServerSendsEventFeedImpl _$$ServerSendsEventFeedImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSendsEventFeedImpl(
      EventsFeedQueries: (json['EventsFeedQueries'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServerSendsEventFeedImplToJson(
        _$ServerSendsEventFeedImpl instance) =>
    <String, dynamic>{
      'EventsFeedQueries': instance.EventsFeedQueries,
    };
