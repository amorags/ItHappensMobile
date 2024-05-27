import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'entities.freezed.dart';
part 'entities.g.dart';

@freezed
class Event with _$Event {
  const factory Event({

    required int Event_Id,
    required String Name,
    required String Location,
    required String ImageUrl,
    required String Description,
    required DateTime Date,
    required int Amount,
    required int Association_Id,
    required int Booking_Id

}) = _CardEvent;

  factory Event.fromJson(Map<String, Object?> json) =>
  _$EventFromJson(json);
}