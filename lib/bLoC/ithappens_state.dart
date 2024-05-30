import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/entities.dart';

part 'ithappens_state.freezed.dart';

@freezed
sealed class ItHappensState with _$ItHappensState {
  const factory ItHappensState.empty() = ItHappensStateEmpty;
  const factory ItHappensState.loading() = ItHappensStateLoading;
  const factory ItHappensState.loggedIn({
    required String token,
    required String userType,
    required List<Event> events,

  }) = ItHappensStateLoggedIn;
  const factory ItHappensState.loaded({required List<Event> events}) = ItHappensStateLoaded;
  const factory ItHappensState.loadedAss({required List<Association> associations}) = ItHappensStateLoadedAss;
  const factory ItHappensState.error({required String message}) = ItHappensStateError;
  const factory ItHappensState.loadedUserEvents({required List<Event> events}) = ItHappensStateLoadedUserEvents;
}

