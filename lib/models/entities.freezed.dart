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
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  int get EventId => throw _privateConstructorUsedError;
  String? get Name => throw _privateConstructorUsedError;
  String? get Location => throw _privateConstructorUsedError;
  String? get ImageUrl => throw _privateConstructorUsedError;
  String? get Description => throw _privateConstructorUsedError;
  DateTime get Date => throw _privateConstructorUsedError;
  int get Amount =>
      throw _privateConstructorUsedError; // Default value if not provided
  int get Price =>
      throw _privateConstructorUsedError; // Default value if not provided
  int get AssociationId => throw _privateConstructorUsedError;
  int get CategoryId => throw _privateConstructorUsedError;
  int get BookingId => throw _privateConstructorUsedError;

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
      {int EventId,
      String? Name,
      String? Location,
      String? ImageUrl,
      String? Description,
      DateTime Date,
      int Amount,
      int Price,
      int AssociationId,
      int CategoryId,
      int BookingId});
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
    Object? EventId = null,
    Object? Name = freezed,
    Object? Location = freezed,
    Object? ImageUrl = freezed,
    Object? Description = freezed,
    Object? Date = null,
    Object? Amount = null,
    Object? Price = null,
    Object? AssociationId = null,
    Object? CategoryId = null,
    Object? BookingId = null,
  }) {
    return _then(_value.copyWith(
      EventId: null == EventId
          ? _value.EventId
          : EventId // ignore: cast_nullable_to_non_nullable
              as int,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Location: freezed == Location
          ? _value.Location
          : Location // ignore: cast_nullable_to_non_nullable
              as String?,
      ImageUrl: freezed == ImageUrl
          ? _value.ImageUrl
          : ImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
      Date: null == Date
          ? _value.Date
          : Date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      Amount: null == Amount
          ? _value.Amount
          : Amount // ignore: cast_nullable_to_non_nullable
              as int,
      Price: null == Price
          ? _value.Price
          : Price // ignore: cast_nullable_to_non_nullable
              as int,
      AssociationId: null == AssociationId
          ? _value.AssociationId
          : AssociationId // ignore: cast_nullable_to_non_nullable
              as int,
      CategoryId: null == CategoryId
          ? _value.CategoryId
          : CategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      BookingId: null == BookingId
          ? _value.BookingId
          : BookingId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int EventId,
      String? Name,
      String? Location,
      String? ImageUrl,
      String? Description,
      DateTime Date,
      int Amount,
      int Price,
      int AssociationId,
      int CategoryId,
      int BookingId});
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? EventId = null,
    Object? Name = freezed,
    Object? Location = freezed,
    Object? ImageUrl = freezed,
    Object? Description = freezed,
    Object? Date = null,
    Object? Amount = null,
    Object? Price = null,
    Object? AssociationId = null,
    Object? CategoryId = null,
    Object? BookingId = null,
  }) {
    return _then(_$EventImpl(
      EventId: null == EventId
          ? _value.EventId
          : EventId // ignore: cast_nullable_to_non_nullable
              as int,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Location: freezed == Location
          ? _value.Location
          : Location // ignore: cast_nullable_to_non_nullable
              as String?,
      ImageUrl: freezed == ImageUrl
          ? _value.ImageUrl
          : ImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
      Date: null == Date
          ? _value.Date
          : Date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      Amount: null == Amount
          ? _value.Amount
          : Amount // ignore: cast_nullable_to_non_nullable
              as int,
      Price: null == Price
          ? _value.Price
          : Price // ignore: cast_nullable_to_non_nullable
              as int,
      AssociationId: null == AssociationId
          ? _value.AssociationId
          : AssociationId // ignore: cast_nullable_to_non_nullable
              as int,
      CategoryId: null == CategoryId
          ? _value.CategoryId
          : CategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      BookingId: null == BookingId
          ? _value.BookingId
          : BookingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {required this.EventId,
      this.Name,
      this.Location,
      this.ImageUrl,
      this.Description,
      required this.Date,
      this.Amount = 0,
      this.Price = 0,
      required this.AssociationId,
      required this.CategoryId,
      required this.BookingId});

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final int EventId;
  @override
  final String? Name;
  @override
  final String? Location;
  @override
  final String? ImageUrl;
  @override
  final String? Description;
  @override
  final DateTime Date;
  @override
  @JsonKey()
  final int Amount;
// Default value if not provided
  @override
  @JsonKey()
  final int Price;
// Default value if not provided
  @override
  final int AssociationId;
  @override
  final int CategoryId;
  @override
  final int BookingId;

  @override
  String toString() {
    return 'Event(EventId: $EventId, Name: $Name, Location: $Location, ImageUrl: $ImageUrl, Description: $Description, Date: $Date, Amount: $Amount, Price: $Price, AssociationId: $AssociationId, CategoryId: $CategoryId, BookingId: $BookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.EventId, EventId) || other.EventId == EventId) &&
            (identical(other.Name, Name) || other.Name == Name) &&
            (identical(other.Location, Location) ||
                other.Location == Location) &&
            (identical(other.ImageUrl, ImageUrl) ||
                other.ImageUrl == ImageUrl) &&
            (identical(other.Description, Description) ||
                other.Description == Description) &&
            (identical(other.Date, Date) || other.Date == Date) &&
            (identical(other.Amount, Amount) || other.Amount == Amount) &&
            (identical(other.Price, Price) || other.Price == Price) &&
            (identical(other.AssociationId, AssociationId) ||
                other.AssociationId == AssociationId) &&
            (identical(other.CategoryId, CategoryId) ||
                other.CategoryId == CategoryId) &&
            (identical(other.BookingId, BookingId) ||
                other.BookingId == BookingId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      EventId,
      Name,
      Location,
      ImageUrl,
      Description,
      Date,
      Amount,
      Price,
      AssociationId,
      CategoryId,
      BookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {required final int EventId,
      final String? Name,
      final String? Location,
      final String? ImageUrl,
      final String? Description,
      required final DateTime Date,
      final int Amount,
      final int Price,
      required final int AssociationId,
      required final int CategoryId,
      required final int BookingId}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  int get EventId;
  @override
  String? get Name;
  @override
  String? get Location;
  @override
  String? get ImageUrl;
  @override
  String? get Description;
  @override
  DateTime get Date;
  @override
  int get Amount;
  @override // Default value if not provided
  int get Price;
  @override // Default value if not provided
  int get AssociationId;
  @override
  int get CategoryId;
  @override
  int get BookingId;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Association _$AssociationFromJson(Map<String, dynamic> json) {
  return _Association.fromJson(json);
}

/// @nodoc
mixin _$Association {
  int get AssociationId => throw _privateConstructorUsedError;
  String? get Name => throw _privateConstructorUsedError;
  String? get Email => throw _privateConstructorUsedError;
  dynamic get Phone =>
      throw _privateConstructorUsedError; // Accepts both String and int
  String? get Address => throw _privateConstructorUsedError;
  String? get Description => throw _privateConstructorUsedError;
  String? get BannerUrl => throw _privateConstructorUsedError;
  String? get ProfileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssociationCopyWith<Association> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssociationCopyWith<$Res> {
  factory $AssociationCopyWith(
          Association value, $Res Function(Association) then) =
      _$AssociationCopyWithImpl<$Res, Association>;
  @useResult
  $Res call(
      {int AssociationId,
      String? Name,
      String? Email,
      dynamic Phone,
      String? Address,
      String? Description,
      String? BannerUrl,
      String? ProfileUrl});
}

/// @nodoc
class _$AssociationCopyWithImpl<$Res, $Val extends Association>
    implements $AssociationCopyWith<$Res> {
  _$AssociationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? AssociationId = null,
    Object? Name = freezed,
    Object? Email = freezed,
    Object? Phone = freezed,
    Object? Address = freezed,
    Object? Description = freezed,
    Object? BannerUrl = freezed,
    Object? ProfileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      AssociationId: null == AssociationId
          ? _value.AssociationId
          : AssociationId // ignore: cast_nullable_to_non_nullable
              as int,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Email: freezed == Email
          ? _value.Email
          : Email // ignore: cast_nullable_to_non_nullable
              as String?,
      Phone: freezed == Phone
          ? _value.Phone
          : Phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      Address: freezed == Address
          ? _value.Address
          : Address // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
      BannerUrl: freezed == BannerUrl
          ? _value.BannerUrl
          : BannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ProfileUrl: freezed == ProfileUrl
          ? _value.ProfileUrl
          : ProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssociationImplCopyWith<$Res>
    implements $AssociationCopyWith<$Res> {
  factory _$$AssociationImplCopyWith(
          _$AssociationImpl value, $Res Function(_$AssociationImpl) then) =
      __$$AssociationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int AssociationId,
      String? Name,
      String? Email,
      dynamic Phone,
      String? Address,
      String? Description,
      String? BannerUrl,
      String? ProfileUrl});
}

/// @nodoc
class __$$AssociationImplCopyWithImpl<$Res>
    extends _$AssociationCopyWithImpl<$Res, _$AssociationImpl>
    implements _$$AssociationImplCopyWith<$Res> {
  __$$AssociationImplCopyWithImpl(
      _$AssociationImpl _value, $Res Function(_$AssociationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? AssociationId = null,
    Object? Name = freezed,
    Object? Email = freezed,
    Object? Phone = freezed,
    Object? Address = freezed,
    Object? Description = freezed,
    Object? BannerUrl = freezed,
    Object? ProfileUrl = freezed,
  }) {
    return _then(_$AssociationImpl(
      AssociationId: null == AssociationId
          ? _value.AssociationId
          : AssociationId // ignore: cast_nullable_to_non_nullable
              as int,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Email: freezed == Email
          ? _value.Email
          : Email // ignore: cast_nullable_to_non_nullable
              as String?,
      Phone: freezed == Phone
          ? _value.Phone
          : Phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      Address: freezed == Address
          ? _value.Address
          : Address // ignore: cast_nullable_to_non_nullable
              as String?,
      Description: freezed == Description
          ? _value.Description
          : Description // ignore: cast_nullable_to_non_nullable
              as String?,
      BannerUrl: freezed == BannerUrl
          ? _value.BannerUrl
          : BannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ProfileUrl: freezed == ProfileUrl
          ? _value.ProfileUrl
          : ProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssociationImpl implements _Association {
  const _$AssociationImpl(
      {required this.AssociationId,
      this.Name,
      this.Email,
      this.Phone,
      this.Address,
      this.Description,
      this.BannerUrl,
      this.ProfileUrl});

  factory _$AssociationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssociationImplFromJson(json);

  @override
  final int AssociationId;
  @override
  final String? Name;
  @override
  final String? Email;
  @override
  final dynamic Phone;
// Accepts both String and int
  @override
  final String? Address;
  @override
  final String? Description;
  @override
  final String? BannerUrl;
  @override
  final String? ProfileUrl;

  @override
  String toString() {
    return 'Association(AssociationId: $AssociationId, Name: $Name, Email: $Email, Phone: $Phone, Address: $Address, Description: $Description, BannerUrl: $BannerUrl, ProfileUrl: $ProfileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssociationImpl &&
            (identical(other.AssociationId, AssociationId) ||
                other.AssociationId == AssociationId) &&
            (identical(other.Name, Name) || other.Name == Name) &&
            (identical(other.Email, Email) || other.Email == Email) &&
            const DeepCollectionEquality().equals(other.Phone, Phone) &&
            (identical(other.Address, Address) || other.Address == Address) &&
            (identical(other.Description, Description) ||
                other.Description == Description) &&
            (identical(other.BannerUrl, BannerUrl) ||
                other.BannerUrl == BannerUrl) &&
            (identical(other.ProfileUrl, ProfileUrl) ||
                other.ProfileUrl == ProfileUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      AssociationId,
      Name,
      Email,
      const DeepCollectionEquality().hash(Phone),
      Address,
      Description,
      BannerUrl,
      ProfileUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssociationImplCopyWith<_$AssociationImpl> get copyWith =>
      __$$AssociationImplCopyWithImpl<_$AssociationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssociationImplToJson(
      this,
    );
  }
}

abstract class _Association implements Association {
  const factory _Association(
      {required final int AssociationId,
      final String? Name,
      final String? Email,
      final dynamic Phone,
      final String? Address,
      final String? Description,
      final String? BannerUrl,
      final String? ProfileUrl}) = _$AssociationImpl;

  factory _Association.fromJson(Map<String, dynamic> json) =
      _$AssociationImpl.fromJson;

  @override
  int get AssociationId;
  @override
  String? get Name;
  @override
  String? get Email;
  @override
  dynamic get Phone;
  @override // Accepts both String and int
  String? get Address;
  @override
  String? get Description;
  @override
  String? get BannerUrl;
  @override
  String? get ProfileUrl;
  @override
  @JsonKey(ignore: true)
  _$$AssociationImplCopyWith<_$AssociationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
