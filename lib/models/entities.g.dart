// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      eventId: (json['eventId'] as num).toInt(),
      name: json['name'] as String,
      location: json['location'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      amount: (json['amount'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      associationId: (json['associationId'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      bookingId: (json['bookingId'] as num).toInt(),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'name': instance.name,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'amount': instance.amount,
      'price': instance.price,
      'associationId': instance.associationId,
      'categoryId': instance.categoryId,
      'bookingId': instance.bookingId,
    };
