// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required UniqueId id,
      required StringSingleLine name,
      required StringSingleLine city,
      required StringSingleLine username,
      required StringSingleLine planPrice,
      required Option<bool> skuEnabled,
      required StringSingleLine paymentPeriod,
      required StringSingleLine status}) {
    return _User(
      id: id,
      name: name,
      city: city,
      username: username,
      planPrice: planPrice,
      skuEnabled: skuEnabled,
      paymentPeriod: paymentPeriod,
      status: status,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

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
      _$UserCopyWithImpl<$Res>;
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
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? username = freezed,
    Object? planPrice = freezed,
    Object? skuEnabled = freezed,
    Object? paymentPeriod = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      planPrice: planPrice == freezed
          ? _value.planPrice
          : planPrice // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      skuEnabled: skuEnabled == freezed
          ? _value.skuEnabled
          : skuEnabled // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      paymentPeriod: paymentPeriod == freezed
          ? _value.paymentPeriod
          : paymentPeriod // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
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
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? username = freezed,
    Object? planPrice = freezed,
    Object? skuEnabled = freezed,
    Object? paymentPeriod = freezed,
    Object? status = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      planPrice: planPrice == freezed
          ? _value.planPrice
          : planPrice // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      skuEnabled: skuEnabled == freezed
          ? _value.skuEnabled
          : skuEnabled // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      paymentPeriod: paymentPeriod == freezed
          ? _value.paymentPeriod
          : paymentPeriod // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.planPrice, planPrice) &&
            const DeepCollectionEquality()
                .equals(other.skuEnabled, skuEnabled) &&
            const DeepCollectionEquality()
                .equals(other.paymentPeriod, paymentPeriod) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(planPrice),
      const DeepCollectionEquality().hash(skuEnabled),
      const DeepCollectionEquality().hash(paymentPeriod),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required UniqueId id,
      required StringSingleLine name,
      required StringSingleLine city,
      required StringSingleLine username,
      required StringSingleLine planPrice,
      required Option<bool> skuEnabled,
      required StringSingleLine paymentPeriod,
      required StringSingleLine status}) = _$_User;

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
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
