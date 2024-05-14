// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientWantsToSignup _$ClientWantsToSignupFromJson(Map<String, dynamic> json) {
  return _ClientWantsToSignup.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToSignup {
  String get eventType => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get phone => throw _privateConstructorUsedError;
  int get userType_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToSignupCopyWith<ClientWantsToSignup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToSignupCopyWith<$Res> {
  factory $ClientWantsToSignupCopyWith(
          ClientWantsToSignup value, $Res Function(ClientWantsToSignup) then) =
      _$ClientWantsToSignupCopyWithImpl<$Res, ClientWantsToSignup>;
  @useResult
  $Res call(
      {String eventType,
      String username,
      String firstname,
      String lastname,
      String password,
      String email,
      int phone,
      int userType_id});
}

/// @nodoc
class _$ClientWantsToSignupCopyWithImpl<$Res, $Val extends ClientWantsToSignup>
    implements $ClientWantsToSignupCopyWith<$Res> {
  _$ClientWantsToSignupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? username = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? password = null,
    Object? email = null,
    Object? phone = null,
    Object? userType_id = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      userType_id: null == userType_id
          ? _value.userType_id
          : userType_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToSignupImplCopyWith<$Res>
    implements $ClientWantsToSignupCopyWith<$Res> {
  factory _$$ClientWantsToSignupImplCopyWith(_$ClientWantsToSignupImpl value,
          $Res Function(_$ClientWantsToSignupImpl) then) =
      __$$ClientWantsToSignupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventType,
      String username,
      String firstname,
      String lastname,
      String password,
      String email,
      int phone,
      int userType_id});
}

/// @nodoc
class __$$ClientWantsToSignupImplCopyWithImpl<$Res>
    extends _$ClientWantsToSignupCopyWithImpl<$Res, _$ClientWantsToSignupImpl>
    implements _$$ClientWantsToSignupImplCopyWith<$Res> {
  __$$ClientWantsToSignupImplCopyWithImpl(_$ClientWantsToSignupImpl _value,
      $Res Function(_$ClientWantsToSignupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? username = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? password = null,
    Object? email = null,
    Object? phone = null,
    Object? userType_id = null,
  }) {
    return _then(_$ClientWantsToSignupImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      userType_id: null == userType_id
          ? _value.userType_id
          : userType_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToSignupImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToSignup {
  const _$ClientWantsToSignupImpl(
      {required this.eventType,
      required this.username,
      required this.firstname,
      required this.lastname,
      required this.password,
      required this.email,
      required this.phone,
      required this.userType_id});

  factory _$ClientWantsToSignupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToSignupImplFromJson(json);

  @override
  final String eventType;
  @override
  final String username;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String password;
  @override
  final String email;
  @override
  final int phone;
  @override
  final int userType_id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToSignup(eventType: $eventType, username: $username, firstname: $firstname, lastname: $lastname, password: $password, email: $email, phone: $phone, userType_id: $userType_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToSignup'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('userType_id', userType_id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToSignupImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userType_id, userType_id) ||
                other.userType_id == userType_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, username, firstname,
      lastname, password, email, phone, userType_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToSignupImplCopyWith<_$ClientWantsToSignupImpl> get copyWith =>
      __$$ClientWantsToSignupImplCopyWithImpl<_$ClientWantsToSignupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToSignupImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToSignup implements ClientWantsToSignup {
  const factory _ClientWantsToSignup(
      {required final String eventType,
      required final String username,
      required final String firstname,
      required final String lastname,
      required final String password,
      required final String email,
      required final int phone,
      required final int userType_id}) = _$ClientWantsToSignupImpl;

  factory _ClientWantsToSignup.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToSignupImpl.fromJson;

  @override
  String get eventType;
  @override
  String get username;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get password;
  @override
  String get email;
  @override
  int get phone;
  @override
  int get userType_id;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToSignupImplCopyWith<_$ClientWantsToSignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClientWantsToLogin _$ClientWantsToLoginFromJson(Map<String, dynamic> json) {
  return _ClientWantsToLogin.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToLogin {
  String get eventType => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int get userType_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToLoginCopyWith<ClientWantsToLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToLoginCopyWith<$Res> {
  factory $ClientWantsToLoginCopyWith(
          ClientWantsToLogin value, $Res Function(ClientWantsToLogin) then) =
      _$ClientWantsToLoginCopyWithImpl<$Res, ClientWantsToLogin>;
  @useResult
  $Res call({String eventType, String email, String password, int userType_id});
}

/// @nodoc
class _$ClientWantsToLoginCopyWithImpl<$Res, $Val extends ClientWantsToLogin>
    implements $ClientWantsToLoginCopyWith<$Res> {
  _$ClientWantsToLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
    Object? userType_id = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userType_id: null == userType_id
          ? _value.userType_id
          : userType_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToLoginImplCopyWith<$Res>
    implements $ClientWantsToLoginCopyWith<$Res> {
  factory _$$ClientWantsToLoginImplCopyWith(_$ClientWantsToLoginImpl value,
          $Res Function(_$ClientWantsToLoginImpl) then) =
      __$$ClientWantsToLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String email, String password, int userType_id});
}

/// @nodoc
class __$$ClientWantsToLoginImplCopyWithImpl<$Res>
    extends _$ClientWantsToLoginCopyWithImpl<$Res, _$ClientWantsToLoginImpl>
    implements _$$ClientWantsToLoginImplCopyWith<$Res> {
  __$$ClientWantsToLoginImplCopyWithImpl(_$ClientWantsToLoginImpl _value,
      $Res Function(_$ClientWantsToLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
    Object? userType_id = null,
  }) {
    return _then(_$ClientWantsToLoginImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userType_id: null == userType_id
          ? _value.userType_id
          : userType_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToLoginImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToLogin {
  const _$ClientWantsToLoginImpl(
      {required this.eventType,
      required this.email,
      required this.password,
      required this.userType_id});

  factory _$ClientWantsToLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLoginImplFromJson(json);

  @override
  final String eventType;
  @override
  final String email;
  @override
  final String password;
  @override
  final int userType_id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToLogin(eventType: $eventType, email: $email, password: $password, userType_id: $userType_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToLogin'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('userType_id', userType_id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLoginImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userType_id, userType_id) ||
                other.userType_id == userType_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eventType, email, password, userType_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLoginImplCopyWith<_$ClientWantsToLoginImpl> get copyWith =>
      __$$ClientWantsToLoginImplCopyWithImpl<_$ClientWantsToLoginImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLoginImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToLogin implements ClientWantsToLogin {
  const factory _ClientWantsToLogin(
      {required final String eventType,
      required final String email,
      required final String password,
      required final int userType_id}) = _$ClientWantsToLoginImpl;

  factory _ClientWantsToLogin.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLoginImpl.fromJson;

  @override
  String get eventType;
  @override
  String get email;
  @override
  String get password;
  @override
  int get userType_id;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToLoginImplCopyWith<_$ClientWantsToLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
