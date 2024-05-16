import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ithappens_state.freezed.dart';

@freezed
class ItHappensState with _$ItHappensState {
  const factory ItHappensState({
    required String? headsUp,
    String? token,
    String? userType,
  }) = ItHappensStateData;

  const factory ItHappensState.loggedIn({
    required String token,
    required String userType,
  }) = ItHappensLoggedInState;

  const factory ItHappensState.error({
    required String message,
  }) = ItHappensErrorState;

  factory ItHappensState.empty() => const ItHappensState(headsUp: null);
}


