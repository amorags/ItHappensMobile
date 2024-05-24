// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _CardEvent.fromJson(json);
}

/// @nodoc
mixin _$Event {
  int get Event_Id => throw _privateConstructorUsedError;
  String get Name => throw _privateConstructorUsedError;
  String get Location => throw _privateConstructorUsedError;
  String get ImageUrl => throw _privateConstructorUsedError;
  String get Description => throw _privateConstructorUsedError;
  DateTime get Date => throw _privateConstructorUsedError;
  int get Amount => throw _privateConstructorUsedError;
  int get Association_Id => throw _privateConstructorUsedError;
  int get Booking_Id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
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
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardEventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$CardEventImplCopyWith(
          _$CardEventImpl value, $Res Function(_$CardEventImpl) then) =
      __$$CardEventImplCopyWithImpl<$Res>;
  @override
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
class __$$CardEventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$CardEventImpl>
    implements _$$CardEventImplCopyWith<$Res> {
  __$$CardEventImplCopyWithImpl(
      _$CardEventImpl _value, $Res Function(_$CardEventImpl) _then)
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
    return _then(_$CardEventImpl(
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
class _$CardEventImpl with DiagnosticableTreeMixin implements _CardEvent {
  const _$CardEventImpl(
      {required this.Event_Id,
      required this.Name,
      required this.Location,
      required this.ImageUrl,
      required this.Description,
      required this.Date,
      required this.Amount,
      required this.Association_Id,
      required this.Booking_Id});

  factory _$CardEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardEventImplFromJson(json);

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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Event(Event_Id: $Event_Id, Name: $Name, Location: $Location, ImageUrl: $ImageUrl, Description: $Description, Date: $Date, Amount: $Amount, Association_Id: $Association_Id, Booking_Id: $Booking_Id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Event'))
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
            other is _$CardEventImpl &&
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
  _$$CardEventImplCopyWith<_$CardEventImpl> get copyWith =>
      __$$CardEventImplCopyWithImpl<_$CardEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardEventImplToJson(
      this,
    );
  }
}

abstract class _CardEvent implements Event {
  const factory _CardEvent(
      {required final int Event_Id,
      required final String Name,
      required final String Location,
      required final String ImageUrl,
      required final String Description,
      required final DateTime Date,
      required final int Amount,
      required final int Association_Id,
      required final int Booking_Id}) = _$CardEventImpl;

  factory _CardEvent.fromJson(Map<String, dynamic> json) =
      _$CardEventImpl.fromJson;

  @override
  int get Event_Id;
  @override
  String get Name;
  @override
  String get Location;
  @override
  String get ImageUrl;
  @override
  String get Description;
  @override
  DateTime get Date;
  @override
  int get Amount;
  @override
  int get Association_Id;
  @override
  int get Booking_Id;
  @override
  @JsonKey(ignore: true)
  _$$CardEventImplCopyWith<_$CardEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
