// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$IpAddressChangedCopyWith<$Res> {
  factory _$$IpAddressChangedCopyWith(
          _$IpAddressChanged value, $Res Function(_$IpAddressChanged) then) =
      __$$IpAddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String ipAddrStr});
}

/// @nodoc
class __$$IpAddressChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$IpAddressChanged>
    implements _$$IpAddressChangedCopyWith<$Res> {
  __$$IpAddressChangedCopyWithImpl(
      _$IpAddressChanged _value, $Res Function(_$IpAddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipAddrStr = null,
  }) {
    return _then(_$IpAddressChanged(
      null == ipAddrStr
          ? _value.ipAddrStr
          : ipAddrStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IpAddressChanged
    with DiagnosticableTreeMixin
    implements IpAddressChanged {
  const _$IpAddressChanged(this.ipAddrStr);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpAddressChanged &&
            (identical(other.ipAddrStr, ipAddrStr) ||
                other.ipAddrStr == ipAddrStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ipAddrStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IpAddressChangedCopyWith<_$IpAddressChanged> get copyWith =>
      __$$IpAddressChangedCopyWithImpl<_$IpAddressChanged>(this, _$identity);

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
  const factory IpAddressChanged(final String ipAddrStr) = _$IpAddressChanged;

  String get ipAddrStr;
  @JsonKey(ignore: true)
  _$$IpAddressChangedCopyWith<_$IpAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameChangedCopyWith<$Res> {
  factory _$$UsernameChangedCopyWith(
          _$UsernameChanged value, $Res Function(_$UsernameChanged) then) =
      __$$UsernameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameStr});
}

/// @nodoc
class __$$UsernameChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$UsernameChanged>
    implements _$$UsernameChangedCopyWith<$Res> {
  __$$UsernameChangedCopyWithImpl(
      _$UsernameChanged _value, $Res Function(_$UsernameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameStr = null,
  }) {
    return _then(_$UsernameChanged(
      null == usernameStr
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged
    with DiagnosticableTreeMixin
    implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                other.usernameStr == usernameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      __$$UsernameChangedCopyWithImpl<_$UsernameChanged>(this, _$identity);

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
  const factory UsernameChanged(final String usernameStr) = _$UsernameChanged;

  String get usernameStr;
  @JsonKey(ignore: true)
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$PasswordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

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
  const factory PasswordChanged(final String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordVisibleCopyWith<$Res> {
  factory _$$PasswordVisibleCopyWith(
          _$PasswordVisible value, $Res Function(_$PasswordVisible) then) =
      __$$PasswordVisibleCopyWithImpl<$Res>;
  @useResult
  $Res call({bool visible});
}

/// @nodoc
class __$$PasswordVisibleCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordVisible>
    implements _$$PasswordVisibleCopyWith<$Res> {
  __$$PasswordVisibleCopyWithImpl(
      _$PasswordVisible _value, $Res Function(_$PasswordVisible) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visible = null,
  }) {
    return _then(_$PasswordVisible(
      null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordVisible
    with DiagnosticableTreeMixin
    implements PasswordVisible {
  const _$PasswordVisible(this.visible);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordVisible &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordVisibleCopyWith<_$PasswordVisible> get copyWith =>
      __$$PasswordVisibleCopyWithImpl<_$PasswordVisible>(this, _$identity);

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
  const factory PasswordVisible(final bool visible) = _$PasswordVisible;

  bool get visible;
  @JsonKey(ignore: true)
  _$$PasswordVisibleCopyWith<_$PasswordVisible> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordPressedCopyWith(
          _$RegisterWithEmailAndPasswordPressed value,
          $Res Function(_$RegisterWithEmailAndPasswordPressed) then) =
      __$$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res,
        _$RegisterWithEmailAndPasswordPressed>
    implements _$$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      _$RegisterWithEmailAndPasswordPressed _value,
      $Res Function(_$RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordPressed);
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
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordPressedCopyWith(
          _$SignInWithEmailAndPasswordPressed value,
          $Res Function(_$SignInWithEmailAndPasswordPressed) then) =
      __$$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res,
        _$SignInWithEmailAndPasswordPressed>
    implements _$$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordPressedCopyWithImpl(
      _$SignInWithEmailAndPasswordPressed _value,
      $Res Function(_$SignInWithEmailAndPasswordPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed();

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordPressed);
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
      _$SignInWithEmailAndPasswordPressed;
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
abstract class _$$_SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$_SignInFormStateCopyWith(
          _$_SignInFormState value, $Res Function(_$_SignInFormState) then) =
      __$$_SignInFormStateCopyWithImpl<$Res>;
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
class __$$_SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$_SignInFormState>
    implements _$$_SignInFormStateCopyWith<$Res> {
  __$$_SignInFormStateCopyWithImpl(
      _$_SignInFormState _value, $Res Function(_$_SignInFormState) _then)
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
    return _then(_$_SignInFormState(
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

class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormState &&
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
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      __$$_SignInFormStateCopyWithImpl<_$_SignInFormState>(this, _$identity);
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
          authFailureOrSuccessOption}) = _$_SignInFormState;

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
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
