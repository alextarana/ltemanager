// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$User {
  UniqueId get id => throw _privateConstructorUsedError;
  StringSingleLine get name => throw _privateConstructorUsedError;
  StringSingleLine get city => throw _privateConstructorUsedError;
  StringSingleLine get username => throw _privateConstructorUsedError;
  StringSingleLine get planPrice => throw _privateConstructorUsedError;
  Option<bool> get skuEnabled => throw _privateConstructorUsedError;
  StringSingleLine get paymentPeriod => throw _privateConstructorUsedError;
  StringSingleLine get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      StringSingleLine city,
      StringSingleLine username,
      StringSingleLine planPrice,
      Option<bool> skuEnabled,
      StringSingleLine paymentPeriod,
      StringSingleLine status});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? username = null,
    Object? planPrice = null,
    Object? skuEnabled = null,
    Object? paymentPeriod = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      planPrice: null == planPrice
          ? _value.planPrice
          : planPrice // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      skuEnabled: null == skuEnabled
          ? _value.skuEnabled
          : skuEnabled // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      paymentPeriod: null == paymentPeriod
          ? _value.paymentPeriod
          : paymentPeriod // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      StringSingleLine city,
      StringSingleLine username,
      StringSingleLine planPrice,
      Option<bool> skuEnabled,
      StringSingleLine paymentPeriod,
      StringSingleLine status});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
    Object? username = null,
    Object? planPrice = null,
    Object? skuEnabled = null,
    Object? paymentPeriod = null,
    Object? status = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      planPrice: null == planPrice
          ? _value.planPrice
          : planPrice // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      skuEnabled: null == skuEnabled
          ? _value.skuEnabled
          : skuEnabled // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      paymentPeriod: null == paymentPeriod
          ? _value.paymentPeriod
          : paymentPeriod // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.name,
      required this.city,
      required this.username,
      required this.planPrice,
      required this.skuEnabled,
      required this.paymentPeriod,
      required this.status});

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final StringSingleLine city;
  @override
  final StringSingleLine username;
  @override
  final StringSingleLine planPrice;
  @override
  final Option<bool> skuEnabled;
  @override
  final StringSingleLine paymentPeriod;
  @override
  final StringSingleLine status;

  @override
  String toString() {
    return 'User(id: $id, name: $name, city: $city, username: $username, planPrice: $planPrice, skuEnabled: $skuEnabled, paymentPeriod: $paymentPeriod, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.planPrice, planPrice) ||
                other.planPrice == planPrice) &&
            (identical(other.skuEnabled, skuEnabled) ||
                other.skuEnabled == skuEnabled) &&
            (identical(other.paymentPeriod, paymentPeriod) ||
                other.paymentPeriod == paymentPeriod) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, city, username,
      planPrice, skuEnabled, paymentPeriod, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final UniqueId id,
      required final StringSingleLine name,
      required final StringSingleLine city,
      required final StringSingleLine username,
      required final StringSingleLine planPrice,
      required final Option<bool> skuEnabled,
      required final StringSingleLine paymentPeriod,
      required final StringSingleLine status}) = _$UserImpl;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  StringSingleLine get city;
  @override
  StringSingleLine get username;
  @override
  StringSingleLine get planPrice;
  @override
  Option<bool> get skuEnabled;
  @override
  StringSingleLine get paymentPeriod;
  @override
  StringSingleLine get status;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
