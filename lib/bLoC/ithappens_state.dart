import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/entities.dart';

part 'ithappens_state.freezed.dart';

@freezed
class ItHappensState with _$ItHappensState {
  const factory ItHappensState.empty() = ItHappensStateEmpty;
  const factory ItHappensState.loading() = ItHappensStateLoading;
  const factory ItHappensState.loggedIn({
    required String token,
    required String userType,
    required List<Event> events,
  }) = ItHappensStateLoggedIn;
  const factory ItHappensState.error({required String message}) = ItHappensStateError;
}
