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
    case 'ClientWantsToRetrieveEventFeed':
      return ClientWantsToRetrieveEventFeed.fromJson(json);

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
    required TResult Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)
        clientWantsToRetrieveEventFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult? Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult? Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)?
        clientWantsToRetrieveEventFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)?
        clientWantsToRetrieveEventFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToSignup value) clientWantsToSignup,
    required TResult Function(ClientWantsToLogin value) ClientWantsToLogin,
    required TResult Function(ClientWantsToRetrieveEventFeed value)
        clientWantsToRetrieveEventFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToRetrieveEventFeed value)?
        clientWantsToRetrieveEventFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToRetrieveEventFeed value)?
        clientWantsToRetrieveEventFeed,
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
    required TResult Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)
        clientWantsToRetrieveEventFeed,
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
    TResult? Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)?
        clientWantsToRetrieveEventFeed,
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
    TResult Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)?
        clientWantsToRetrieveEventFeed,
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
    required TResult Function(ClientWantsToRetrieveEventFeed value)
        clientWantsToRetrieveEventFeed,
  }) {
    return clientWantsToSignup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToRetrieveEventFeed value)?
        clientWantsToRetrieveEventFeed,
  }) {
    return clientWantsToSignup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToRetrieveEventFeed value)?
        clientWantsToRetrieveEventFeed,
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
    required TResult Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)
        clientWantsToRetrieveEventFeed,
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
    TResult? Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)?
        clientWantsToRetrieveEventFeed,
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
    TResult Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)?
        clientWantsToRetrieveEventFeed,
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
    required TResult Function(ClientWantsToRetrieveEventFeed value)
        clientWantsToRetrieveEventFeed,
  }) {
    return ClientWantsToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToRetrieveEventFeed value)?
        clientWantsToRetrieveEventFeed,
  }) {
    return ClientWantsToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToRetrieveEventFeed value)?
        clientWantsToRetrieveEventFeed,
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
abstract class _$$ClientWantsToRetrieveEventFeedImplCopyWith<$Res> {
  factory _$$ClientWantsToRetrieveEventFeedImplCopyWith(
          _$ClientWantsToRetrieveEventFeedImpl value,
          $Res Function(_$ClientWantsToRetrieveEventFeedImpl) then) =
      __$$ClientWantsToRetrieveEventFeedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int Event_Id,
      String Name,
      String Location,
      String ImageUrl,
      String Description,
      DateTime Date,
      int Amount,
      int Association_Id,
      int Booking_Id});
}

/// @nodoc
class __$$ClientWantsToRetrieveEventFeedImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res,
        _$ClientWantsToRetrieveEventFeedImpl>
    implements _$$ClientWantsToRetrieveEventFeedImplCopyWith<$Res> {
  __$$ClientWantsToRetrieveEventFeedImplCopyWithImpl(
      _$ClientWantsToRetrieveEventFeedImpl _value,
      $Res Function(_$ClientWantsToRetrieveEventFeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Event_Id = null,
    Object? Name = null,
    Object? Location = null,
    Object? ImageUrl = null,
    Object? Description = null,
    Object? Date = null,
    Object? Amount = null,
    Object? Association_Id = null,
    Object? Booking_Id = null,
  }) {
    return _then(_$ClientWantsToRetrieveEventFeedImpl(
      Event_Id: null == Event_Id
          ? _value.Event_Id
          : Event_Id // ignore: cast_nullable_to_non_nullable
              as int,
      Name: null == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String,
      Location: null == Location
          ? _value.Location
          : Location // ignore: cast_nullable_to_non_nullable
              as String,
      ImageUrl: null == ImageUrl
          ? _value.ImageUrl
          : ImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      Description: null == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String,
      Date: null == Date
          ? _value.Date
          : Date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      Amount: null == Amount
          ? _value.Amount
          : Amount // ignore: cast_nullable_to_non_nullable
              as int,
      Association_Id: null == Association_Id
          ? _value.Association_Id
          : Association_Id // ignore: cast_nullable_to_non_nullable
              as int,
      Booking_Id: null == Booking_Id
          ? _value.Booking_Id
          : Booking_Id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToRetrieveEventFeedImpl
    with DiagnosticableTreeMixin
    implements ClientWantsToRetrieveEventFeed {
  _$ClientWantsToRetrieveEventFeedImpl(
      {required this.Event_Id,
      required this.Name,
      required this.Location,
      required this.ImageUrl,
      required this.Description,
      required this.Date,
      required this.Amount,
      required this.Association_Id,
      required this.Booking_Id,
      final String? $type})
      : $type = $type ?? 'ClientWantsToRetrieveEventFeed';

  factory _$ClientWantsToRetrieveEventFeedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToRetrieveEventFeedImplFromJson(json);

  @override
  final int Event_Id;
  @override
  final String Name;
  @override
  final String Location;
  @override
  final String ImageUrl;
  @override
  final String Description;
  @override
  final DateTime Date;
  @override
  final int Amount;
  @override
  final int Association_Id;
  @override
  final int Booking_Id;

  @JsonKey(name: 'eventType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientEvent.clientWantsToRetrieveEventFeed(Event_Id: $Event_Id, Name: $Name, Location: $Location, ImageUrl: $ImageUrl, Description: $Description, Date: $Date, Amount: $Amount, Association_Id: $Association_Id, Booking_Id: $Booking_Id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ClientEvent.clientWantsToRetrieveEventFeed'))
      ..add(DiagnosticsProperty('Event_Id', Event_Id))
      ..add(DiagnosticsProperty('Name', Name))
      ..add(DiagnosticsProperty('Location', Location))
      ..add(DiagnosticsProperty('ImageUrl', ImageUrl))
      ..add(DiagnosticsProperty('Description', Description))
      ..add(DiagnosticsProperty('Date', Date))
      ..add(DiagnosticsProperty('Amount', Amount))
      ..add(DiagnosticsProperty('Association_Id', Association_Id))
      ..add(DiagnosticsProperty('Booking_Id', Booking_Id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToRetrieveEventFeedImpl &&
            (identical(other.Event_Id, Event_Id) ||
                other.Event_Id == Event_Id) &&
            (identical(other.Name, Name) || other.Name == Name) &&
            (identical(other.Location, Location) ||
                other.Location == Location) &&
            (identical(other.ImageUrl, ImageUrl) ||
                other.ImageUrl == ImageUrl) &&
            (identical(other.Description, Description) ||
                other.Description == Description) &&
            (identical(other.Date, Date) || other.Date == Date) &&
            (identical(other.Amount, Amount) || other.Amount == Amount) &&
            (identical(other.Association_Id, Association_Id) ||
                other.Association_Id == Association_Id) &&
            (identical(other.Booking_Id, Booking_Id) ||
                other.Booking_Id == Booking_Id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Event_Id, Name, Location,
      ImageUrl, Description, Date, Amount, Association_Id, Booking_Id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToRetrieveEventFeedImplCopyWith<
          _$ClientWantsToRetrieveEventFeedImpl>
      get copyWith => __$$ClientWantsToRetrieveEventFeedImplCopyWithImpl<
          _$ClientWantsToRetrieveEventFeedImpl>(this, _$identity);

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
    required TResult Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)
        clientWantsToRetrieveEventFeed,
  }) {
    return clientWantsToRetrieveEventFeed(Event_Id, Name, Location, ImageUrl,
        Description, Date, Amount, Association_Id, Booking_Id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult? Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult? Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)?
        clientWantsToRetrieveEventFeed,
  }) {
    return clientWantsToRetrieveEventFeed?.call(Event_Id, Name, Location,
        ImageUrl, Description, Date, Amount, Association_Id, Booking_Id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String firstname, String lastname,
            String password, String email, int phone, int userType_id)?
        clientWantsToSignup,
    TResult Function(String email, String password, int userType_id)?
        ClientWantsToLogin,
    TResult Function(
            int Event_Id,
            String Name,
            String Location,
            String ImageUrl,
            String Description,
            DateTime Date,
            int Amount,
            int Association_Id,
            int Booking_Id)?
        clientWantsToRetrieveEventFeed,
    required TResult orElse(),
  }) {
    if (clientWantsToRetrieveEventFeed != null) {
      return clientWantsToRetrieveEventFeed(Event_Id, Name, Location, ImageUrl,
          Description, Date, Amount, Association_Id, Booking_Id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientWantsToSignup value) clientWantsToSignup,
    required TResult Function(ClientWantsToLogin value) ClientWantsToLogin,
    required TResult Function(ClientWantsToRetrieveEventFeed value)
        clientWantsToRetrieveEventFeed,
  }) {
    return clientWantsToRetrieveEventFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult? Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult? Function(ClientWantsToRetrieveEventFeed value)?
        clientWantsToRetrieveEventFeed,
  }) {
    return clientWantsToRetrieveEventFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientWantsToSignup value)? clientWantsToSignup,
    TResult Function(ClientWantsToLogin value)? ClientWantsToLogin,
    TResult Function(ClientWantsToRetrieveEventFeed value)?
        clientWantsToRetrieveEventFeed,
    required TResult orElse(),
  }) {
    if (clientWantsToRetrieveEventFeed != null) {
      return clientWantsToRetrieveEventFeed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToRetrieveEventFeedImplToJson(
      this,
    );
  }
}

abstract class ClientWantsToRetrieveEventFeed implements ClientEvent {
  factory ClientWantsToRetrieveEventFeed(
      {required final int Event_Id,
      required final String Name,
      required final String Location,
      required final String ImageUrl,
      required final String Description,
      required final DateTime Date,
      required final int Amount,
      required final int Association_Id,
      required final int Booking_Id}) = _$ClientWantsToRetrieveEventFeedImpl;

  factory ClientWantsToRetrieveEventFeed.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToRetrieveEventFeedImpl.fromJson;

  int get Event_Id;
  String get Name;
  String get Location;
  String get ImageUrl;
  String get Description;
  DateTime get Date;
  int get Amount;
  int get Association_Id;
  int get Booking_Id;
  @JsonKey(ignore: true)
  _$$ClientWantsToRetrieveEventFeedImplCopyWith<
          _$ClientWantsToRetrieveEventFeedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerEvent _$ServerEventFromJson(Map<String, dynamic> json) {
  return ServerSendsEventFeed.fromJson(json);
}

/// @nodoc
mixin _$ServerEvent {
  List<Event> get EventsFeedQueries => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Event> EventsFeedQueries)
        serverSendsEventFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerSendsEventFeed value) serverSendsEventFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsEventFeed value)? serverSendsEventFeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsEventFeed value)? serverSendsEventFeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerEventCopyWith<ServerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerEventCopyWith<$Res> {
  factory $ServerEventCopyWith(
          ServerEvent value, $Res Function(ServerEvent) then) =
      _$ServerEventCopyWithImpl<$Res, ServerEvent>;
  @useResult
  $Res call({List<Event> EventsFeedQueries});
}

/// @nodoc
class _$ServerEventCopyWithImpl<$Res, $Val extends ServerEvent>
    implements $ServerEventCopyWith<$Res> {
  _$ServerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? EventsFeedQueries = null,
  }) {
    return _then(_value.copyWith(
      EventsFeedQueries: null == EventsFeedQueries
          ? _value.EventsFeedQueries
          : EventsFeedQueries // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsEventFeedImplCopyWith<$Res>
    implements $ServerEventCopyWith<$Res> {
  factory _$$ServerSendsEventFeedImplCopyWith(_$ServerSendsEventFeedImpl value,
          $Res Function(_$ServerSendsEventFeedImpl) then) =
      __$$ServerSendsEventFeedImplCopyWithImpl<$Res>;
  @override
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
  _$ServerSendsEventFeedImpl({required final List<Event> EventsFeedQueries})
      : _EventsFeedQueries = EventsFeedQueries;

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
  }) {
    return serverSendsEventFeed(EventsFeedQueries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
  }) {
    return serverSendsEventFeed?.call(EventsFeedQueries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Event> EventsFeedQueries)? serverSendsEventFeed,
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
  }) {
    return serverSendsEventFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerSendsEventFeed value)? serverSendsEventFeed,
  }) {
    return serverSendsEventFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerSendsEventFeed value)? serverSendsEventFeed,
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
  factory ServerSendsEventFeed({required final List<Event> EventsFeedQueries}) =
      _$ServerSendsEventFeedImpl;

  factory ServerSendsEventFeed.fromJson(Map<String, dynamic> json) =
      _$ServerSendsEventFeedImpl.fromJson;

  @override
  List<Event> get EventsFeedQueries;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsEventFeedImplCopyWith<_$ServerSendsEventFeedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
