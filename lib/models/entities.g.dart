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

_$AssociationImpl _$$AssociationImplFromJson(Map<String, dynamic> json) =>
    _$AssociationImpl(
      AssociationId: (json['AssociationId'] as num).toInt(),
      Name: json['Name'] as String?,
      Email: json['Email'] as String?,
      Phone: json['Phone'] as String?,
      Address: json['Address'] as String?,
      Description: json['Description'] as String?,
      BannerUrl: json['BannerUrl'] as String?,
      ProfileUrl: json['ProfileUrl'] as String?,
    );

Map<String, dynamic> _$$AssociationImplToJson(_$AssociationImpl instance) =>
    <String, dynamic>{
      'AssociationId': instance.AssociationId,
      'Name': instance.Name,
      'Email': instance.Email,
      'Phone': instance.Phone,
      'Address': instance.Address,
      'Description': instance.Description,
      'BannerUrl': instance.BannerUrl,
      'ProfileUrl': instance.ProfileUrl,
    };
