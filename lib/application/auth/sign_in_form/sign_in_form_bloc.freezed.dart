// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddrStr) ipAddressChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(bool visible) passwordVisible,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddrStr)? ipAddressChanged,
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(bool visible)? passwordVisible,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddrStr)? ipAddressChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(bool visible)? passwordVisible,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddressChanged value) ipAddressChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordVisible value) passwordVisible,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddressChanged value)? ipAddressChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordVisible value)? passwordVisible,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddressChanged value)? ipAddressChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordVisible value)? passwordVisible,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IpAddressChangedImplCopyWith<$Res> {
  factory _$$IpAddressChangedImplCopyWith(_$IpAddressChangedImpl value,
          $Res Function(_$IpAddressChangedImpl) then) =
      __$$IpAddressChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ipAddrStr});
}

/// @nodoc
class __$$IpAddressChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$IpAddressChangedImpl>
    implements _$$IpAddressChangedImplCopyWith<$Res> {
  __$$IpAddressChangedImplCopyWithImpl(_$IpAddressChangedImpl _value,
      $Res Function(_$IpAddressChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipAddrStr = null,
  }) {
    return _then(_$IpAddressChangedImpl(
      null == ipAddrStr
          ? _value.ipAddrStr
          : ipAddrStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IpAddressChangedImpl
    with DiagnosticableTreeMixin
    implements IpAddressChanged {
  const _$IpAddressChangedImpl(this.ipAddrStr);

  @override
  final String ipAddrStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.ipAddressChanged(ipAddrStr: $ipAddrStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.ipAddressChanged'))
      ..add(DiagnosticsProperty('ipAddrStr', ipAddrStr));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpAddressChangedImpl &&
            (identical(other.ipAddrStr, ipAddrStr) ||
                other.ipAddrStr == ipAddrStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ipAddrStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IpAddressChangedImplCopyWith<_$IpAddressChangedImpl> get copyWith =>
      __$$IpAddressChangedImplCopyWithImpl<_$IpAddressChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddrStr) ipAddressChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(bool visible) passwordVisible,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) {
    return ipAddressChanged(ipAddrStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddrStr)? ipAddressChanged,
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(bool visible)? passwordVisible,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
  }) {
    return ipAddressChanged?.call(ipAddrStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddrStr)? ipAddressChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(bool visible)? passwordVisible,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (ipAddressChanged != null) {
      return ipAddressChanged(ipAddrStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddressChanged value) ipAddressChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordVisible value) passwordVisible,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return ipAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddressChanged value)? ipAddressChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordVisible value)? passwordVisible,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return ipAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddressChanged value)? ipAddressChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordVisible value)? passwordVisible,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (ipAddressChanged != null) {
      return ipAddressChanged(this);
    }
    return orElse();
  }
}

abstract class IpAddressChanged implements SignInFormEvent {
  const factory IpAddressChanged(final String ipAddrStr) =
      _$IpAddressChangedImpl;

  String get ipAddrStr;
  @JsonKey(ignore: true)
  _$$IpAddressChangedImplCopyWith<_$IpAddressChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameChangedImplCopyWith<$Res> {
  factory _$$UsernameChangedImplCopyWith(_$UsernameChangedImpl value,
          $Res Function(_$UsernameChangedImpl) then) =
      __$$UsernameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameStr});
}

/// @nodoc
class __$$UsernameChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$UsernameChangedImpl>
    implements _$$UsernameChangedImplCopyWith<$Res> {
  __$$UsernameChangedImplCopyWithImpl(
      _$UsernameChangedImpl _value, $Res Function(_$UsernameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameStr = null,
  }) {
    return _then(_$UsernameChangedImpl(
      null == usernameStr
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChangedImpl
    with DiagnosticableTreeMixin
    implements UsernameChanged {
  const _$UsernameChangedImpl(this.usernameStr);

  @override
  final String usernameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.usernameChanged'))
      ..add(DiagnosticsProperty('usernameStr', usernameStr));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChangedImpl &&
            (identical(other.usernameStr, usernameStr) ||
                other.usernameStr == usernameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      __$$UsernameChangedImplCopyWithImpl<_$UsernameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddrStr) ipAddressChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(bool visible) passwordVisible,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) {
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddrStr)? ipAddressChanged,
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(bool visible)? passwordVisible,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
  }) {
    return usernameChanged?.call(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddrStr)? ipAddressChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(bool visible)? passwordVisible,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddressChanged value) ipAddressChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordVisible value) passwordVisible,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddressChanged value)? ipAddressChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordVisible value)? passwordVisible,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddressChanged value)? ipAddressChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordVisible value)? passwordVisible,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements SignInFormEvent {
  const factory UsernameChanged(final String usernameStr) =
      _$UsernameChangedImpl;

  String get usernameStr;
  @JsonKey(ignore: true)
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChangedImpl(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddrStr) ipAddressChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(bool visible) passwordVisible,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddrStr)? ipAddressChanged,
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(bool visible)? passwordVisible,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddrStr)? ipAddressChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(bool visible)? passwordVisible,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddressChanged value) ipAddressChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordVisible value) passwordVisible,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddressChanged value)? ipAddressChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordVisible value)? passwordVisible,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddressChanged value)? ipAddressChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordVisible value)? passwordVisible,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(final String passwordStr) =
      _$PasswordChangedImpl;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordVisibleImplCopyWith<$Res> {
  factory _$$PasswordVisibleImplCopyWith(_$PasswordVisibleImpl value,
          $Res Function(_$PasswordVisibleImpl) then) =
      __$$PasswordVisibleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool visible});
}

/// @nodoc
class __$$PasswordVisibleImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordVisibleImpl>
    implements _$$PasswordVisibleImplCopyWith<$Res> {
  __$$PasswordVisibleImplCopyWithImpl(
      _$PasswordVisibleImpl _value, $Res Function(_$PasswordVisibleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visible = null,
  }) {
    return _then(_$PasswordVisibleImpl(
      null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordVisibleImpl
    with DiagnosticableTreeMixin
    implements PasswordVisible {
  const _$PasswordVisibleImpl(this.visible);

  @override
  final bool visible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.passwordVisible(visible: $visible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.passwordVisible'))
      ..add(DiagnosticsProperty('visible', visible));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordVisibleImpl &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordVisibleImplCopyWith<_$PasswordVisibleImpl> get copyWith =>
      __$$PasswordVisibleImplCopyWithImpl<_$PasswordVisibleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddrStr) ipAddressChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(bool visible) passwordVisible,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) {
    return passwordVisible(visible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddrStr)? ipAddressChanged,
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(bool visible)? passwordVisible,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
  }) {
    return passwordVisible?.call(visible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddrStr)? ipAddressChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(bool visible)? passwordVisible,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordVisible != null) {
      return passwordVisible(visible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddressChanged value) ipAddressChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordVisible value) passwordVisible,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return passwordVisible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddressChanged value)? ipAddressChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordVisible value)? passwordVisible,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return passwordVisible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddressChanged value)? ipAddressChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordVisible value)? passwordVisible,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordVisible != null) {
      return passwordVisible(this);
    }
    return orElse();
  }
}

abstract class PasswordVisible implements SignInFormEvent {
  const factory PasswordVisible(final bool visible) = _$PasswordVisibleImpl;

  bool get visible;
  @JsonKey(ignore: true)
  _$$PasswordVisibleImplCopyWith<_$PasswordVisibleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordPressedImplCopyWith(
          _$RegisterWithEmailAndPasswordPressedImpl value,
          $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) then) =
      __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res,
        _$RegisterWithEmailAndPasswordPressedImpl>
    implements _$$RegisterWithEmailAndPasswordPressedImplCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordPressedImplCopyWithImpl(
      _$RegisterWithEmailAndPasswordPressedImpl _value,
      $Res Function(_$RegisterWithEmailAndPasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressedImpl
    with DiagnosticableTreeMixin
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'SignInFormEvent.registerWithEmailAndPasswordPressed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddrStr) ipAddressChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(bool visible) passwordVisible,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddrStr)? ipAddressChanged,
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(bool visible)? passwordVisible,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddrStr)? ipAddressChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(bool visible)? passwordVisible,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddressChanged value) ipAddressChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordVisible value) passwordVisible,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddressChanged value)? ipAddressChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordVisible value)? passwordVisible,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddressChanged value)? ipAddressChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordVisible value)? passwordVisible,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressedImpl;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordPressedImplCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordPressedImplCopyWith(
          _$SignInWithEmailAndPasswordPressedImpl value,
          $Res Function(_$SignInWithEmailAndPasswordPressedImpl) then) =
      __$$SignInWithEmailAndPasswordPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailAndPasswordPressedImplCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res,
        _$SignInWithEmailAndPasswordPressedImpl>
    implements _$$SignInWithEmailAndPasswordPressedImplCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordPressedImplCopyWithImpl(
      _$SignInWithEmailAndPasswordPressedImpl _value,
      $Res Function(_$SignInWithEmailAndPasswordPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressedImpl
    with DiagnosticableTreeMixin
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'SignInFormEvent.signInWithEmailAndPasswordPressed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ipAddrStr) ipAddressChanged,
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(bool visible) passwordVisible,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ipAddrStr)? ipAddressChanged,
    TResult? Function(String usernameStr)? usernameChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(bool visible)? passwordVisible,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ipAddrStr)? ipAddressChanged,
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(bool visible)? passwordVisible,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddressChanged value) ipAddressChanged,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordVisible value) passwordVisible,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddressChanged value)? ipAddressChanged,
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordVisible value)? passwordVisible,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddressChanged value)? ipAddressChanged,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordVisible value)? passwordVisible,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressedImpl;
}

/// @nodoc
mixin _$SignInFormState {
  IPAddress get ipAddress => throw _privateConstructorUsedError;
  Username get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {IPAddress ipAddress,
      Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      bool isPasswordVisible,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipAddress = null,
    Object? username = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? isPasswordVisible = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as IPAddress,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInFormStateImplCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$SignInFormStateImplCopyWith(_$SignInFormStateImpl value,
          $Res Function(_$SignInFormStateImpl) then) =
      __$$SignInFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IPAddress ipAddress,
      Username username,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      bool isPasswordVisible,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$SignInFormStateImplCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$SignInFormStateImpl>
    implements _$$SignInFormStateImplCopyWith<$Res> {
  __$$SignInFormStateImplCopyWithImpl(
      _$SignInFormStateImpl _value, $Res Function(_$SignInFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipAddress = null,
    Object? username = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? isPasswordVisible = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$SignInFormStateImpl(
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as IPAddress,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SignInFormStateImpl
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$SignInFormStateImpl(
      {required this.ipAddress,
      required this.username,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.isPasswordVisible,
      required this.authFailureOrSuccessOption});

  @override
  final IPAddress ipAddress;
  @override
  final Username username;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool isPasswordVisible;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormState(ipAddress: $ipAddress, username: $username, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isPasswordVisible: $isPasswordVisible, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormState'))
      ..add(DiagnosticsProperty('ipAddress', ipAddress))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isPasswordVisible', isPasswordVisible))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormStateImpl &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      ipAddress,
      username,
      password,
      showErrorMessages,
      isSubmitting,
      isPasswordVisible,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      __$$SignInFormStateImplCopyWithImpl<_$SignInFormStateImpl>(
          this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final IPAddress ipAddress,
      required final Username username,
      required final Password password,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final bool isPasswordVisible,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$SignInFormStateImpl;

  @override
  IPAddress get ipAddress;
  @override
  Username get username;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isPasswordVisible;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
