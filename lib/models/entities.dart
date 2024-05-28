import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'entities.freezed.dart';
part 'entities.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int eventId,
    required String name,
    required String location,
    required String imageUrl,
    required String description,
    required DateTime date,
    required int amount,
    required double price, // Assuming price should be double
    required int associationId,
    required int categoryId,
    required int bookingId
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}