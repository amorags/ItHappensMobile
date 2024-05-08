import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ithappens_state.freezed.dart';

@freezed
class ItHappensState with _$ItHappensState {
  const factory ItHappensState({
    required String? headsUp,
  }) = ItHappensStateData; // Renamed the constructor to ItHappensStateData

  factory ItHappensState.empty() => const ItHappensState(headsUp: null);
}



