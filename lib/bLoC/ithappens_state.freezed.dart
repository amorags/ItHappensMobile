// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ithappens_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItHappensState {
  String? get headsUp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItHappensStateCopyWith<ItHappensState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItHappensStateCopyWith<$Res> {
  factory $ItHappensStateCopyWith(
          ItHappensState value, $Res Function(ItHappensState) then) =
      _$ItHappensStateCopyWithImpl<$Res, ItHappensState>;
  @useResult
  $Res call({String? headsUp});
}

/// @nodoc
class _$ItHappensStateCopyWithImpl<$Res, $Val extends ItHappensState>
    implements $ItHappensStateCopyWith<$Res> {
  _$ItHappensStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headsUp = freezed,
  }) {
    return _then(_value.copyWith(
      headsUp: freezed == headsUp
          ? _value.headsUp
          : headsUp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItHappensStateDataImplCopyWith<$Res>
    implements $ItHappensStateCopyWith<$Res> {
  factory _$$ItHappensStateDataImplCopyWith(_$ItHappensStateDataImpl value,
          $Res Function(_$ItHappensStateDataImpl) then) =
      __$$ItHappensStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? headsUp});
}

/// @nodoc
class __$$ItHappensStateDataImplCopyWithImpl<$Res>
    extends _$ItHappensStateCopyWithImpl<$Res, _$ItHappensStateDataImpl>
    implements _$$ItHappensStateDataImplCopyWith<$Res> {
  __$$ItHappensStateDataImplCopyWithImpl(_$ItHappensStateDataImpl _value,
      $Res Function(_$ItHappensStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headsUp = freezed,
  }) {
    return _then(_$ItHappensStateDataImpl(
      headsUp: freezed == headsUp
          ? _value.headsUp
          : headsUp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ItHappensStateDataImpl
    with DiagnosticableTreeMixin
    implements ItHappensStateData {
  const _$ItHappensStateDataImpl({required this.headsUp});

  @override
  final String? headsUp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItHappensState(headsUp: $headsUp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItHappensState'))
      ..add(DiagnosticsProperty('headsUp', headsUp));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItHappensStateDataImpl &&
            (identical(other.headsUp, headsUp) || other.headsUp == headsUp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, headsUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItHappensStateDataImplCopyWith<_$ItHappensStateDataImpl> get copyWith =>
      __$$ItHappensStateDataImplCopyWithImpl<_$ItHappensStateDataImpl>(
          this, _$identity);
}

abstract class ItHappensStateData implements ItHappensState {
  const factory ItHappensStateData({required final String? headsUp}) =
      _$ItHappensStateDataImpl;

  @override
  String? get headsUp;
  @override
  @JsonKey(ignore: true)
  _$$ItHappensStateDataImplCopyWith<_$ItHappensStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
