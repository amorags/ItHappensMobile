// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardEventImpl _$$CardEventImplFromJson(Map<String, dynamic> json) =>
    _$CardEventImpl(
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

Map<String, dynamic> _$$CardEventImplToJson(_$CardEventImpl instance) =>
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
