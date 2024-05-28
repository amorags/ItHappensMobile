import 'package:freezed_annotation/freezed_annotation.dart';

part 'entities.freezed.dart';
part 'entities.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int EventId,
    String? Name,
    String? Location,
    String? ImageUrl,
    String? Description,
    required DateTime Date,
    @Default(0) int Amount, // Default value if not provided
    @Default(0) int Price,  // Default value if not provided
    required int AssociationId,
    required int CategoryId,
    required int BookingId,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
