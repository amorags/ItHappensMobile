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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? headsUp, String? token, String? userType)
        $default, {
    required TResult Function(String token, String userType) loggedIn,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? headsUp, String? token, String? userType)?
        $default, {
    TResult? Function(String token, String userType)? loggedIn,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? headsUp, String? token, String? userType)?
        $default, {
    TResult Function(String token, String userType)? loggedIn,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ItHappensStateData value) $default, {
    required TResult Function(ItHappensLoggedInState value) loggedIn,
    required TResult Function(ItHappensErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ItHappensStateData value)? $default, {
    TResult? Function(ItHappensLoggedInState value)? loggedIn,
    TResult? Function(ItHappensErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ItHappensStateData value)? $default, {
    TResult Function(ItHappensLoggedInState value)? loggedIn,
    TResult Function(ItHappensErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItHappensStateCopyWith<$Res> {
  factory $ItHappensStateCopyWith(
          ItHappensState value, $Res Function(ItHappensState) then) =
      _$ItHappensStateCopyWithImpl<$Res, ItHappensState>;
}

/// @nodoc
class _$ItHappensStateCopyWithImpl<$Res, $Val extends ItHappensState>
    implements $ItHappensStateCopyWith<$Res> {
  _$ItHappensStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ItHappensStateDataImplCopyWith<$Res> {
  factory _$$ItHappensStateDataImplCopyWith(_$ItHappensStateDataImpl value,
          $Res Function(_$ItHappensStateDataImpl) then) =
      __$$ItHappensStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? headsUp, String? token, String? userType});
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
    Object? token = freezed,
    Object? userType = freezed,
  }) {
    return _then(_$ItHappensStateDataImpl(
      headsUp: freezed == headsUp
          ? _value.headsUp
          : headsUp // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ItHappensStateDataImpl
    with DiagnosticableTreeMixin
    implements ItHappensStateData {
  const _$ItHappensStateDataImpl(
      {required this.headsUp, this.token, this.userType});

  @override
  final String? headsUp;
  @override
  final String? token;
  @override
  final String? userType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItHappensState(headsUp: $headsUp, token: $token, userType: $userType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItHappensState'))
      ..add(DiagnosticsProperty('headsUp', headsUp))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('userType', userType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItHappensStateDataImpl &&
            (identical(other.headsUp, headsUp) || other.headsUp == headsUp) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, headsUp, token, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItHappensStateDataImplCopyWith<_$ItHappensStateDataImpl> get copyWith =>
      __$$ItHappensStateDataImplCopyWithImpl<_$ItHappensStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? headsUp, String? token, String? userType)
        $default, {
    required TResult Function(String token, String userType) loggedIn,
    required TResult Function(String message) error,
  }) {
    return $default(headsUp, token, userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? headsUp, String? token, String? userType)?
        $default, {
    TResult? Function(String token, String userType)? loggedIn,
    TResult? Function(String message)? error,
  }) {
    return $default?.call(headsUp, token, userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? headsUp, String? token, String? userType)?
        $default, {
    TResult Function(String token, String userType)? loggedIn,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(headsUp, token, userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ItHappensStateData value) $default, {
    required TResult Function(ItHappensLoggedInState value) loggedIn,
    required TResult Function(ItHappensErrorState value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ItHappensStateData value)? $default, {
    TResult? Function(ItHappensLoggedInState value)? loggedIn,
    TResult? Function(ItHappensErrorState value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ItHappensStateData value)? $default, {
    TResult Function(ItHappensLoggedInState value)? loggedIn,
    TResult Function(ItHappensErrorState value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ItHappensStateData implements ItHappensState {
  const factory ItHappensStateData(
      {required final String? headsUp,
      final String? token,
      final String? userType}) = _$ItHappensStateDataImpl;

  String? get headsUp;
  String? get token;
  String? get userType;
  @JsonKey(ignore: true)
  _$$ItHappensStateDataImplCopyWith<_$ItHappensStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItHappensLoggedInStateImplCopyWith<$Res> {
  factory _$$ItHappensLoggedInStateImplCopyWith(
          _$ItHappensLoggedInStateImpl value,
          $Res Function(_$ItHappensLoggedInStateImpl) then) =
      __$$ItHappensLoggedInStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token, String userType});
}

/// @nodoc
class __$$ItHappensLoggedInStateImplCopyWithImpl<$Res>
    extends _$ItHappensStateCopyWithImpl<$Res, _$ItHappensLoggedInStateImpl>
    implements _$$ItHappensLoggedInStateImplCopyWith<$Res> {
  __$$ItHappensLoggedInStateImplCopyWithImpl(
      _$ItHappensLoggedInStateImpl _value,
      $Res Function(_$ItHappensLoggedInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userType = null,
  }) {
    return _then(_$ItHappensLoggedInStateImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItHappensLoggedInStateImpl
    with DiagnosticableTreeMixin
    implements ItHappensLoggedInState {
  const _$ItHappensLoggedInStateImpl(
      {required this.token, required this.userType});

  @override
  final String token;
  @override
  final String userType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItHappensState.loggedIn(token: $token, userType: $userType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItHappensState.loggedIn'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('userType', userType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItHappensLoggedInStateImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItHappensLoggedInStateImplCopyWith<_$ItHappensLoggedInStateImpl>
      get copyWith => __$$ItHappensLoggedInStateImplCopyWithImpl<
          _$ItHappensLoggedInStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? headsUp, String? token, String? userType)
        $default, {
    required TResult Function(String token, String userType) loggedIn,
    required TResult Function(String message) error,
  }) {
    return loggedIn(token, userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? headsUp, String? token, String? userType)?
        $default, {
    TResult? Function(String token, String userType)? loggedIn,
    TResult? Function(String message)? error,
  }) {
    return loggedIn?.call(token, userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? headsUp, String? token, String? userType)?
        $default, {
    TResult Function(String token, String userType)? loggedIn,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(token, userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ItHappensStateData value) $default, {
    required TResult Function(ItHappensLoggedInState value) loggedIn,
    required TResult Function(ItHappensErrorState value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ItHappensStateData value)? $default, {
    TResult? Function(ItHappensLoggedInState value)? loggedIn,
    TResult? Function(ItHappensErrorState value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ItHappensStateData value)? $default, {
    TResult Function(ItHappensLoggedInState value)? loggedIn,
    TResult Function(ItHappensErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class ItHappensLoggedInState implements ItHappensState {
  const factory ItHappensLoggedInState(
      {required final String token,
      required final String userType}) = _$ItHappensLoggedInStateImpl;

  String get token;
  String get userType;
  @JsonKey(ignore: true)
  _$$ItHappensLoggedInStateImplCopyWith<_$ItHappensLoggedInStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItHappensErrorStateImplCopyWith<$Res> {
  factory _$$ItHappensErrorStateImplCopyWith(_$ItHappensErrorStateImpl value,
          $Res Function(_$ItHappensErrorStateImpl) then) =
      __$$ItHappensErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ItHappensErrorStateImplCopyWithImpl<$Res>
    extends _$ItHappensStateCopyWithImpl<$Res, _$ItHappensErrorStateImpl>
    implements _$$ItHappensErrorStateImplCopyWith<$Res> {
  __$$ItHappensErrorStateImplCopyWithImpl(_$ItHappensErrorStateImpl _value,
      $Res Function(_$ItHappensErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ItHappensErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ItHappensErrorStateImpl
    with DiagnosticableTreeMixin
    implements ItHappensErrorState {
  const _$ItHappensErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ItHappensState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItHappensState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItHappensErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItHappensErrorStateImplCopyWith<_$ItHappensErrorStateImpl> get copyWith =>
      __$$ItHappensErrorStateImplCopyWithImpl<_$ItHappensErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? headsUp, String? token, String? userType)
        $default, {
    required TResult Function(String token, String userType) loggedIn,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? headsUp, String? token, String? userType)?
        $default, {
    TResult? Function(String token, String userType)? loggedIn,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? headsUp, String? token, String? userType)?
        $default, {
    TResult Function(String token, String userType)? loggedIn,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ItHappensStateData value) $default, {
    required TResult Function(ItHappensLoggedInState value) loggedIn,
    required TResult Function(ItHappensErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ItHappensStateData value)? $default, {
    TResult? Function(ItHappensLoggedInState value)? loggedIn,
    TResult? Function(ItHappensErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ItHappensStateData value)? $default, {
    TResult Function(ItHappensLoggedInState value)? loggedIn,
    TResult Function(ItHappensErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ItHappensErrorState implements ItHappensState {
  const factory ItHappensErrorState({required final String message}) =
      _$ItHappensErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ItHappensErrorStateImplCopyWith<_$ItHappensErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
