// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToSignupImpl _$$ClientWantsToSignupImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToSignupImpl(
      eventType: json['eventType'] as String,
      username: json['username'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      phone: (json['phone'] as num).toInt(),
      userType_id: (json['userType_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ClientWantsToSignupImplToJson(
        _$ClientWantsToSignupImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'username': instance.username,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'password': instance.password,
      'email': instance.email,
      'phone': instance.phone,
      'userType_id': instance.userType_id,
    };

_$ClientWantsToLoginImpl _$$ClientWantsToLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLoginImpl(
      eventType: json['eventType'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      userType_id: (json['userType_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ClientWantsToLoginImplToJson(
        _$ClientWantsToLoginImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'email': instance.email,
      'password': instance.password,
      'userType_id': instance.userType_id,
    };

_$ClientWantsToRetrieveEventFeedImpl
    _$$ClientWantsToRetrieveEventFeedImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsToRetrieveEventFeedImpl(
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

Map<String, dynamic> _$$ClientWantsToRetrieveEventFeedImplToJson(
        _$ClientWantsToRetrieveEventFeedImpl instance) =>
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
