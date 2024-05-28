// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      EventId: (json['EventId'] as num).toInt(),
      Name: json['Name'] as String?,
      Location: json['Location'] as String?,
      ImageUrl: json['ImageUrl'] as String?,
      Description: json['Description'] as String?,
      Date: DateTime.parse(json['Date'] as String),
      Amount: (json['Amount'] as num?)?.toInt() ?? 0,
      Price: (json['Price'] as num?)?.toInt() ?? 0,
      AssociationId: (json['AssociationId'] as num).toInt(),
      CategoryId: (json['CategoryId'] as num).toInt(),
      BookingId: (json['BookingId'] as num).toInt(),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'EventId': instance.EventId,
      'Name': instance.Name,
      'Location': instance.Location,
      'ImageUrl': instance.ImageUrl,
      'Description': instance.Description,
      'Date': instance.Date.toIso8601String(),
      'Amount': instance.Amount,
      'Price': instance.Price,
      'AssociationId': instance.AssociationId,
      'CategoryId': instance.CategoryId,
      'BookingId': instance.BookingId,
    };
