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

ClientEvent _$ClientEventFromJson(Map<String, dynamic> json) {
  switch (json['eventType']) {
    case 'ClientWantsToSignup':
      return ClientWantsToSignup.fromJson(json);
    case 'ClientWantsToLogin':
      return ClientWantsToLogin.fromJson(json);
    case 'ClientWantsToAttendEvent':
      return ClientWantsToAttendEvent.fromJson(json);
    case 'ClientWantsToGetEventFeed':
      return ClientWantsToGetEventFeed.fromJson(json);
    case 'ClientWantsToGetAssociationFeed':
      return ClientWantsToGetAssociationFeed.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'eventType', 'ClientEvent',
          'Invalid union type "${json['eventType']}"!');
  }
}

/// @nodoc
mixin _$ClientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username,
            String firstname,
            String lastname,
            String password,
            String email,
            int phone,
            int userType_id)
        clientWantsToSignup,
    required TResult Function(String email, String password, int userType_id)
        ClientWantsToLogin,
    required TResult Function(int userId, int eventId) ClientWantsToAttendEvent,
    required TResult Function() ClientWantsToGetEventFeed,
    required TResult Function() ClientWantsToGetAssociationFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult? Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult? Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult? Function()? ClientWantsToGetEventFeed,
    TResult? Function()? ClientWantsToGetAssociationFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult Function()? ClientWantsToGetEventFeed,
    TResult Function()? ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToSignup value) clientWantsToSignup,
    required TResult Function(ClientWantsToLogin value) ClientWantsToLogin,
    required TResult Function(ClientWantsToAttendEvent value)
        ClientWantsToAttendEvent,
    required TResult Function(ClientWantsToGetEventFeed value)
        ClientWantsToGetEventFeed,
    required TResult Function(ClientWantsToGetAssociationFeed value)
        ClientWantsToGetAssociationFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult? Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult? Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEventCopyWith<$Res> {
  factory $ClientEventCopyWith(
          ClientEvent value, $Res Function(ClientEvent) then) =
      _$ClientEventCopyWithImpl<$Res, ClientEvent>;
}

/// @nodoc
class _$ClientEventCopyWithImpl<$Res, $Val extends ClientEvent>
    implements $ClientEventCopyWith<$Res> {
  _$ClientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientWantsToSignupImplCopyWith<$Res> {
  factory _$$ClientWantsToSignupImplCopyWith(_$ClientWantsToSignupImpl value,
          $Res Function(_$ClientWantsToSignupImpl) then) =
      __$$ClientWantsToSignupImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username,
      String firstname,
      String lastname,
      String password,
      String email,
      int phone,
      int userType_id});
}

/// @nodoc
class __$$ClientWantsToSignupImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToSignupImpl>
    implements _$$ClientWantsToSignupImplCopyWith<$Res> {
  __$$ClientWantsToSignupImplCopyWithImpl(_$ClientWantsToSignupImpl _value,
      $Res Function(_$ClientWantsToSignupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? password = null,
    Object? email = null,
    Object? phone = null,
    Object? userType_id = null,
  }) {
    return _then(_$ClientWantsToSignupImpl(
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
    implements ClientWantsToSignup {
  _$ClientWantsToSignupImpl(
      {required this.username,
      required this.firstname,
      required this.lastname,
      required this.password,
      required this.email,
      required this.phone,
      required this.userType_id,
      final String? $type})
      : $type = $type ?? 'ClientWantsToSignup';

  factory _$ClientWantsToSignupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToSignupImplFromJson(json);

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

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToSignup(username: $username, firstname: $firstname, lastname: $lastname, password: $password, email: $email, phone: $phone, userType_id: $userType_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.clientWantsToSignup'))
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
  int get hashCode => Object.hash(runtimeType, username, firstname, lastname,
      password, email, phone, userType_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToSignupImplCopyWith<_$ClientWantsToSignupImpl> get copyWith =>
      __$$ClientWantsToSignupImplCopyWithImpl<_$ClientWantsToSignupImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username,
            String firstname,
            String lastname,
            String password,
            String email,
            int phone,
            int userType_id)
        clientWantsToSignup,
    required TResult Function(String email, String password, int userType_id)
        ClientWantsToLogin,
    required TResult Function(int userId, int eventId) ClientWantsToAttendEvent,
    required TResult Function() ClientWantsToGetEventFeed,
    required TResult Function() ClientWantsToGetAssociationFeed,
  }) {
    return clientWantsToSignup(
        username, firstname, lastname, password, email, phone, userType_id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult? Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult? Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult? Function()? ClientWantsToGetEventFeed,
    TResult? Function()? ClientWantsToGetAssociationFeed,
  }) {
    return clientWantsToSignup?.call(
        username, firstname, lastname, password, email, phone, userType_id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult Function()? ClientWantsToGetEventFeed,
    TResult Function()? ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (clientWantsToSignup != null) {
      return clientWantsToSignup(
          username, firstname, lastname, password, email, phone, userType_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToSignup value) clientWantsToSignup,
    required TResult Function(ClientWantsToLogin value) ClientWantsToLogin,
    required TResult Function(ClientWantsToAttendEvent value)
        ClientWantsToAttendEvent,
    required TResult Function(ClientWantsToGetEventFeed value)
        ClientWantsToGetEventFeed,
    required TResult Function(ClientWantsToGetAssociationFeed value)
        ClientWantsToGetAssociationFeed,
  }) {
    return clientWantsToSignup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult? Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult? Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
  }) {
    return clientWantsToSignup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (clientWantsToSignup != null) {
      return clientWantsToSignup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToSignupImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToSignup implements ClientEvent {
  factory ClientWantsToSignup(
      {required final String username,
      required final String firstname,
      required final String lastname,
      required final String password,
      required final String email,
      required final int phone,
      required final int userType_id}) = _$ClientWantsToSignupImpl;

  factory ClientWantsToSignup.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToSignupImpl.fromJson;

  String get username;
  String get firstname;
  String get lastname;
  String get password;
  String get email;
  int get phone;
  int get userType_id;
  @JsonKey(ignore: true)
  _$$ClientWantsToSignupImplCopyWith<_$ClientWantsToSignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToLoginImplCopyWith<$Res> {
  factory _$$ClientWantsToLoginImplCopyWith(_$ClientWantsToLoginImpl value,
          $Res Function(_$ClientWantsToLoginImpl) then) =
      __$$ClientWantsToLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, int userType_id});
}

/// @nodoc
class __$$ClientWantsToLoginImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToLoginImpl>
    implements _$$ClientWantsToLoginImplCopyWith<$Res> {
  __$$ClientWantsToLoginImplCopyWithImpl(_$ClientWantsToLoginImpl _value,
      $Res Function(_$ClientWantsToLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? userType_id = null,
  }) {
    return _then(_$ClientWantsToLoginImpl(
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
    implements ClientWantsToLogin {
  _$ClientWantsToLoginImpl(
      {required this.email,
      required this.password,
      required this.userType_id,
      final String? $type})
      : $type = $type ?? 'ClientWantsToLogin';

  factory _$ClientWantsToLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLoginImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final int userType_id;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.ClientWantsToLogin(email: $email, password: $password, userType_id: $userType_id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.ClientWantsToLogin'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('userType_id', userType_id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userType_id, userType_id) ||
                other.userType_id == userType_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, userType_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLoginImplCopyWith<_$ClientWantsToLoginImpl> get copyWith =>
      __$$ClientWantsToLoginImplCopyWithImpl<_$ClientWantsToLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username,
            String firstname,
            String lastname,
            String password,
            String email,
            int phone,
            int userType_id)
        clientWantsToSignup,
    required TResult Function(String email, String password, int userType_id)
        ClientWantsToLogin,
    required TResult Function(int userId, int eventId) ClientWantsToAttendEvent,
    required TResult Function() ClientWantsToGetEventFeed,
    required TResult Function() ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToLogin(email, password, userType_id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult? Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult? Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult? Function()? ClientWantsToGetEventFeed,
    TResult? Function()? ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToLogin?.call(email, password, userType_id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult Function()? ClientWantsToGetEventFeed,
    TResult Function()? ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (ClientWantsToLogin != null) {
      return ClientWantsToLogin(email, password, userType_id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToSignup value) clientWantsToSignup,
    required TResult Function(ClientWantsToLogin value) ClientWantsToLogin,
    required TResult Function(ClientWantsToAttendEvent value)
        ClientWantsToAttendEvent,
    required TResult Function(ClientWantsToGetEventFeed value)
        ClientWantsToGetEventFeed,
    required TResult Function(ClientWantsToGetAssociationFeed value)
        ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult? Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult? Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (ClientWantsToLogin != null) {
      return ClientWantsToLogin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLoginImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToLogin implements ClientEvent {
  factory ClientWantsToLogin(
      {required final String email,
      required final String password,
      required final int userType_id}) = _$ClientWantsToLoginImpl;

  factory ClientWantsToLogin.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLoginImpl.fromJson;

  String get email;
  String get password;
  int get userType_id;
  @JsonKey(ignore: true)
  _$$ClientWantsToLoginImplCopyWith<_$ClientWantsToLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToAttendEventImplCopyWith<$Res> {
  factory _$$ClientWantsToAttendEventImplCopyWith(
          _$ClientWantsToAttendEventImpl value,
          $Res Function(_$ClientWantsToAttendEventImpl) then) =
      __$$ClientWantsToAttendEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, int eventId});
}

/// @nodoc
class __$$ClientWantsToAttendEventImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToAttendEventImpl>
    implements _$$ClientWantsToAttendEventImplCopyWith<$Res> {
  __$$ClientWantsToAttendEventImplCopyWithImpl(
      _$ClientWantsToAttendEventImpl _value,
      $Res Function(_$ClientWantsToAttendEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? eventId = null,
  }) {
    return _then(_$ClientWantsToAttendEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToAttendEventImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToAttendEvent {
  _$ClientWantsToAttendEventImpl(
      {required this.userId, required this.eventId, final String? $type})
      : $type = $type ?? 'ClientWantsToAttendEvent';

  factory _$ClientWantsToAttendEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToAttendEventImplFromJson(json);

  @override
  final int userId;
  @override
  final int eventId;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.ClientWantsToAttendEvent(userId: $userId, eventId: $eventId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientEvent.ClientWantsToAttendEvent'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('eventId', eventId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToAttendEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToAttendEventImplCopyWith<_$ClientWantsToAttendEventImpl>
      get copyWith => __$$ClientWantsToAttendEventImplCopyWithImpl<
          _$ClientWantsToAttendEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username,
            String firstname,
            String lastname,
            String password,
            String email,
            int phone,
            int userType_id)
        clientWantsToSignup,
    required TResult Function(String email, String password, int userType_id)
        ClientWantsToLogin,
    required TResult Function(int userId, int eventId) ClientWantsToAttendEvent,
    required TResult Function() ClientWantsToGetEventFeed,
    required TResult Function() ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToAttendEvent(userId, eventId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult? Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult? Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult? Function()? ClientWantsToGetEventFeed,
    TResult? Function()? ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToAttendEvent?.call(userId, eventId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult Function()? ClientWantsToGetEventFeed,
    TResult Function()? ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (ClientWantsToAttendEvent != null) {
      return ClientWantsToAttendEvent(userId, eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToSignup value) clientWantsToSignup,
    required TResult Function(ClientWantsToLogin value) ClientWantsToLogin,
    required TResult Function(ClientWantsToAttendEvent value)
        ClientWantsToAttendEvent,
    required TResult Function(ClientWantsToGetEventFeed value)
        ClientWantsToGetEventFeed,
    required TResult Function(ClientWantsToGetAssociationFeed value)
        ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToAttendEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult? Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult? Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToAttendEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (ClientWantsToAttendEvent != null) {
      return ClientWantsToAttendEvent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToAttendEventImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToAttendEvent implements ClientEvent {
  factory ClientWantsToAttendEvent(
      {required final int userId,
      required final int eventId}) = _$ClientWantsToAttendEventImpl;

  factory ClientWantsToAttendEvent.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToAttendEventImpl.fromJson;

  int get userId;
  int get eventId;
  @JsonKey(ignore: true)
  _$$ClientWantsToAttendEventImplCopyWith<_$ClientWantsToAttendEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientWantsToGetEventFeedImplCopyWith<$Res> {
  factory _$$ClientWantsToGetEventFeedImplCopyWith(
          _$ClientWantsToGetEventFeedImpl value,
          $Res Function(_$ClientWantsToGetEventFeedImpl) then) =
      __$$ClientWantsToGetEventFeedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientWantsToGetEventFeedImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$ClientWantsToGetEventFeedImpl>
    implements _$$ClientWantsToGetEventFeedImplCopyWith<$Res> {
  __$$ClientWantsToGetEventFeedImplCopyWithImpl(
      _$ClientWantsToGetEventFeedImpl _value,
      $Res Function(_$ClientWantsToGetEventFeedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToGetEventFeedImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToGetEventFeed {
  _$ClientWantsToGetEventFeedImpl({final String? $type})
      : $type = $type ?? 'ClientWantsToGetEventFeed';

  factory _$ClientWantsToGetEventFeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToGetEventFeedImplFromJson(json);

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.ClientWantsToGetEventFeed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ClientEvent.ClientWantsToGetEventFeed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToGetEventFeedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username,
            String firstname,
            String lastname,
            String password,
            String email,
            int phone,
            int userType_id)
        clientWantsToSignup,
    required TResult Function(String email, String password, int userType_id)
        ClientWantsToLogin,
    required TResult Function(int userId, int eventId) ClientWantsToAttendEvent,
    required TResult Function() ClientWantsToGetEventFeed,
    required TResult Function() ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToGetEventFeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult? Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult? Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult? Function()? ClientWantsToGetEventFeed,
    TResult? Function()? ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToGetEventFeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult Function()? ClientWantsToGetEventFeed,
    TResult Function()? ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (ClientWantsToGetEventFeed != null) {
      return ClientWantsToGetEventFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToSignup value) clientWantsToSignup,
    required TResult Function(ClientWantsToLogin value) ClientWantsToLogin,
    required TResult Function(ClientWantsToAttendEvent value)
        ClientWantsToAttendEvent,
    required TResult Function(ClientWantsToGetEventFeed value)
        ClientWantsToGetEventFeed,
    required TResult Function(ClientWantsToGetAssociationFeed value)
        ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToGetEventFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult? Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult? Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToGetEventFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (ClientWantsToGetEventFeed != null) {
      return ClientWantsToGetEventFeed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToGetEventFeedImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToGetEventFeed implements ClientEvent {
  factory ClientWantsToGetEventFeed() = _$ClientWantsToGetEventFeedImpl;

  factory ClientWantsToGetEventFeed.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToGetEventFeedImpl.fromJson;
}

/// @nodoc
abstract class _$$ClientWantsToGetAssociationFeedImplCopyWith<$Res> {
  factory _$$ClientWantsToGetAssociationFeedImplCopyWith(
          _$ClientWantsToGetAssociationFeedImpl value,
          $Res Function(_$ClientWantsToGetAssociationFeedImpl) then) =
      __$$ClientWantsToGetAssociationFeedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientWantsToGetAssociationFeedImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res,
        _$ClientWantsToGetAssociationFeedImpl>
    implements _$$ClientWantsToGetAssociationFeedImplCopyWith<$Res> {
  __$$ClientWantsToGetAssociationFeedImplCopyWithImpl(
      _$ClientWantsToGetAssociationFeedImpl _value,
      $Res Function(_$ClientWantsToGetAssociationFeedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToGetAssociationFeedImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToGetAssociationFeed {
  _$ClientWantsToGetAssociationFeedImpl({final String? $type})
      : $type = $type ?? 'ClientWantsToGetAssociationFeed';

  factory _$ClientWantsToGetAssociationFeedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToGetAssociationFeedImplFromJson(json);

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.ClientWantsToGetAssociationFeed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ClientEvent.ClientWantsToGetAssociationFeed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToGetAssociationFeedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String username,
            String firstname,
            String lastname,
            String password,
            String email,
            int phone,
            int userType_id)
        clientWantsToSignup,
    required TResult Function(String email, String password, int userType_id)
        ClientWantsToLogin,
    required TResult Function(int userId, int eventId) ClientWantsToAttendEvent,
    required TResult Function() ClientWantsToGetEventFeed,
    required TResult Function() ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToGetAssociationFeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult? Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult? Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult? Function()? ClientWantsToGetEventFeed,
    TResult? Function()? ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToGetAssociationFeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult Function(int userId, int eventId)? ClientWantsToAttendEvent,
    TResult Function()? ClientWantsToGetEventFeed,
    TResult Function()? ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (ClientWantsToGetAssociationFeed != null) {
      return ClientWantsToGetAssociationFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToSignup value) clientWantsToSignup,
    required TResult Function(ClientWantsToLogin value) ClientWantsToLogin,
    required TResult Function(ClientWantsToAttendEvent value)
        ClientWantsToAttendEvent,
    required TResult Function(ClientWantsToGetEventFeed value)
        ClientWantsToGetEventFeed,
    required TResult Function(ClientWantsToGetAssociationFeed value)
        ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToGetAssociationFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult? Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult? Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
  }) {
    return ClientWantsToGetAssociationFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToAttendEvent value)? ClientWantsToAttendEvent,
    TResult Function(ClientWantsToGetEventFeed value)?
        ClientWantsToGetEventFeed,
    TResult Function(ClientWantsToGetAssociationFeed value)?
        ClientWantsToGetAssociationFeed,
    required TResult orElse(),
  }) {
    if (ClientWantsToGetAssociationFeed != null) {
      return ClientWantsToGetAssociationFeed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToGetAssociationFeedImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToGetAssociationFeed implements ClientEvent {
  factory ClientWantsToGetAssociationFeed() =
      _$ClientWantsToGetAssociationFeedImpl;

  factory ClientWantsToGetAssociationFeed.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToGetAssociationFeedImpl.fromJson;
}

ServerEvent _$ServerEventFromJson(Map<String, dynamic> json) {
  switch (json['eventType']) {
    case 'ServerSendsEventFeed':
      return ServerSendsEventFeed.fromJson(json);
    case 'ServerSendsAssociationFeed':
      return ServerSendsAssociationFeed.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'eventType', 'ServerEvent',
          'Invalid union type "${json['eventType']}"!');
  }
}

/// @nodoc
mixin _$ServerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Event> EventsFeedQueries)
        serverSendsEventFeed,
    required TResult Function(List<Association> AssociationsFeedQueries)
        serverSendsAssociationFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
    TResult? Function(List<Association> AssociationsFeedQueries)?
        serverSendsAssociationFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
    TResult Function(List<Association> AssociationsFeedQueries)?
        serverSendsAssociationFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsEventFeed value) serverSendsEventFeed,
    required TResult Function(ServerSendsAssociationFeed value)
        serverSendsAssociationFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsEventFeed value)? serverSendsEventFeed,
    TResult? Function(ServerSendsAssociationFeed value)?
        serverSendsAssociationFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsEventFeed value)? serverSendsEventFeed,
    TResult Function(ServerSendsAssociationFeed value)?
        serverSendsAssociationFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerEventCopyWith<$Res> {
  factory $ServerEventCopyWith(
          ServerEvent value, $Res Function(ServerEvent) then) =
      _$ServerEventCopyWithImpl<$Res, ServerEvent>;
}

/// @nodoc
class _$ServerEventCopyWithImpl<$Res, $Val extends ServerEvent>
    implements $ServerEventCopyWith<$Res> {
  _$ServerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerSendsEventFeedImplCopyWith<$Res> {
  factory _$$ServerSendsEventFeedImplCopyWith(_$ServerSendsEventFeedImpl value,
          $Res Function(_$ServerSendsEventFeedImpl) then) =
      __$$ServerSendsEventFeedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> EventsFeedQueries});
}

/// @nodoc
class __$$ServerSendsEventFeedImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerSendsEventFeedImpl>
    implements _$$ServerSendsEventFeedImplCopyWith<$Res> {
  __$$ServerSendsEventFeedImplCopyWithImpl(_$ServerSendsEventFeedImpl _value,
      $Res Function(_$ServerSendsEventFeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? EventsFeedQueries = null,
  }) {
    return _then(_$ServerSendsEventFeedImpl(
      EventsFeedQueries: null == EventsFeedQueries
          ? _value._EventsFeedQueries
          : EventsFeedQueries // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsEventFeedImpl
    with DiagnosticableTreeMixin
    implements ServerSendsEventFeed {
  const _$ServerSendsEventFeedImpl(
      {required final List<Event> EventsFeedQueries, final String? $type})
      : _EventsFeedQueries = EventsFeedQueries,
        $type = $type ?? 'ServerSendsEventFeed';

  factory _$ServerSendsEventFeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsEventFeedImplFromJson(json);

  final List<Event> _EventsFeedQueries;
  @override
  List<Event> get EventsFeedQueries {
    if (_EventsFeedQueries is EqualUnmodifiableListView)
      return _EventsFeedQueries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_EventsFeedQueries);
  }

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverSendsEventFeed(EventsFeedQueries: $EventsFeedQueries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerEvent.serverSendsEventFeed'))
      ..add(DiagnosticsProperty('EventsFeedQueries', EventsFeedQueries));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsEventFeedImpl &&
            const DeepCollectionEquality()
                .equals(other._EventsFeedQueries, _EventsFeedQueries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_EventsFeedQueries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsEventFeedImplCopyWith<_$ServerSendsEventFeedImpl>
      get copyWith =>
          __$$ServerSendsEventFeedImplCopyWithImpl<_$ServerSendsEventFeedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Event> EventsFeedQueries)
        serverSendsEventFeed,
    required TResult Function(List<Association> AssociationsFeedQueries)
        serverSendsAssociationFeed,
  }) {
    return serverSendsEventFeed(EventsFeedQueries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
    TResult? Function(List<Association> AssociationsFeedQueries)?
        serverSendsAssociationFeed,
  }) {
    return serverSendsEventFeed?.call(EventsFeedQueries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
    TResult Function(List<Association> AssociationsFeedQueries)?
        serverSendsAssociationFeed,
    required TResult orElse(),
  }) {
    if (serverSendsEventFeed != null) {
      return serverSendsEventFeed(EventsFeedQueries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsEventFeed value) serverSendsEventFeed,
    required TResult Function(ServerSendsAssociationFeed value)
        serverSendsAssociationFeed,
  }) {
    return serverSendsEventFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsEventFeed value)? serverSendsEventFeed,
    TResult? Function(ServerSendsAssociationFeed value)?
        serverSendsAssociationFeed,
  }) {
    return serverSendsEventFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsEventFeed value)? serverSendsEventFeed,
    TResult Function(ServerSendsAssociationFeed value)?
        serverSendsAssociationFeed,
    required TResult orElse(),
  }) {
    if (serverSendsEventFeed != null) {
      return serverSendsEventFeed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsEventFeedImplToJson(
      this,
    );
  }
}

abstract class ServerSendsEventFeed implements ServerEvent {
  const factory ServerSendsEventFeed(
          {required final List<Event> EventsFeedQueries}) =
      _$ServerSendsEventFeedImpl;

  factory ServerSendsEventFeed.fromJson(Map<String, dynamic> json) =
      _$ServerSendsEventFeedImpl.fromJson;

  List<Event> get EventsFeedQueries;
  @JsonKey(ignore: true)
  _$$ServerSendsEventFeedImplCopyWith<_$ServerSendsEventFeedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerSendsAssociationFeedImplCopyWith<$Res> {
  factory _$$ServerSendsAssociationFeedImplCopyWith(
          _$ServerSendsAssociationFeedImpl value,
          $Res Function(_$ServerSendsAssociationFeedImpl) then) =
      __$$ServerSendsAssociationFeedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Association> AssociationsFeedQueries});
}

/// @nodoc
class __$$ServerSendsAssociationFeedImplCopyWithImpl<$Res>
    extends _$ServerEventCopyWithImpl<$Res, _$ServerSendsAssociationFeedImpl>
    implements _$$ServerSendsAssociationFeedImplCopyWith<$Res> {
  __$$ServerSendsAssociationFeedImplCopyWithImpl(
      _$ServerSendsAssociationFeedImpl _value,
      $Res Function(_$ServerSendsAssociationFeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? AssociationsFeedQueries = null,
  }) {
    return _then(_$ServerSendsAssociationFeedImpl(
      AssociationsFeedQueries: null == AssociationsFeedQueries
          ? _value._AssociationsFeedQueries
          : AssociationsFeedQueries // ignore: cast_nullable_to_non_nullable
              as List<Association>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsAssociationFeedImpl
    with DiagnosticableTreeMixin
    implements ServerSendsAssociationFeed {
  _$ServerSendsAssociationFeedImpl(
      {required final List<Association> AssociationsFeedQueries,
      final String? $type})
      : _AssociationsFeedQueries = AssociationsFeedQueries,
        $type = $type ?? 'ServerSendsAssociationFeed';

  factory _$ServerSendsAssociationFeedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsAssociationFeedImplFromJson(json);

  final List<Association> _AssociationsFeedQueries;
  @override
  List<Association> get AssociationsFeedQueries {
    if (_AssociationsFeedQueries is EqualUnmodifiableListView)
      return _AssociationsFeedQueries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_AssociationsFeedQueries);
  }

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerEvent.serverSendsAssociationFeed(AssociationsFeedQueries: $AssociationsFeedQueries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ServerEvent.serverSendsAssociationFeed'))
      ..add(DiagnosticsProperty(
          'AssociationsFeedQueries', AssociationsFeedQueries));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsAssociationFeedImpl &&
            const DeepCollectionEquality().equals(
                other._AssociationsFeedQueries, _AssociationsFeedQueries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_AssociationsFeedQueries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsAssociationFeedImplCopyWith<_$ServerSendsAssociationFeedImpl>
      get copyWith => __$$ServerSendsAssociationFeedImplCopyWithImpl<
          _$ServerSendsAssociationFeedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Event> EventsFeedQueries)
        serverSendsEventFeed,
    required TResult Function(List<Association> AssociationsFeedQueries)
        serverSendsAssociationFeed,
  }) {
    return serverSendsAssociationFeed(AssociationsFeedQueries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
    TResult? Function(List<Association> AssociationsFeedQueries)?
        serverSendsAssociationFeed,
  }) {
    return serverSendsAssociationFeed?.call(AssociationsFeedQueries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
    TResult Function(List<Association> AssociationsFeedQueries)?
        serverSendsAssociationFeed,
    required TResult orElse(),
  }) {
    if (serverSendsAssociationFeed != null) {
      return serverSendsAssociationFeed(AssociationsFeedQueries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsEventFeed value) serverSendsEventFeed,
    required TResult Function(ServerSendsAssociationFeed value)
        serverSendsAssociationFeed,
  }) {
    return serverSendsAssociationFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsEventFeed value)? serverSendsEventFeed,
    TResult? Function(ServerSendsAssociationFeed value)?
        serverSendsAssociationFeed,
  }) {
    return serverSendsAssociationFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsEventFeed value)? serverSendsEventFeed,
    TResult Function(ServerSendsAssociationFeed value)?
        serverSendsAssociationFeed,
    required TResult orElse(),
  }) {
    if (serverSendsAssociationFeed != null) {
      return serverSendsAssociationFeed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsAssociationFeedImplToJson(
      this,
    );
  }
}

abstract class ServerSendsAssociationFeed implements ServerEvent {
  factory ServerSendsAssociationFeed(
          {required final List<Association> AssociationsFeedQueries}) =
      _$ServerSendsAssociationFeedImpl;

  factory ServerSendsAssociationFeed.fromJson(Map<String, dynamic> json) =
      _$ServerSendsAssociationFeedImpl.fromJson;

  List<Association> get AssociationsFeedQueries;
  @JsonKey(ignore: true)
  _$$ServerSendsAssociationFeedImplCopyWith<_$ServerSendsAssociationFeedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
