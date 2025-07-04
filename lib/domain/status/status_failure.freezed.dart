// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatusFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingError value) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingError value)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingError value)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusFailureCopyWith<$Res> {
  factory $StatusFailureCopyWith(
          StatusFailure value, $Res Function(StatusFailure) then) =
      _$StatusFailureCopyWithImpl<$Res, StatusFailure>;
}

/// @nodoc
class _$StatusFailureCopyWithImpl<$Res, $Val extends StatusFailure>
    implements $StatusFailureCopyWith<$Res> {
  _$StatusFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingErrorImplCopyWith<$Res> {
  factory _$$LoadingErrorImplCopyWith(
          _$LoadingErrorImpl value, $Res Function(_$LoadingErrorImpl) then) =
      __$$LoadingErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingErrorImplCopyWithImpl<$Res>
    extends _$StatusFailureCopyWithImpl<$Res, _$LoadingErrorImpl>
    implements _$$LoadingErrorImplCopyWith<$Res> {
  __$$LoadingErrorImplCopyWithImpl(
      _$LoadingErrorImpl _value, $Res Function(_$LoadingErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingErrorImpl implements LoadingError {
  const _$LoadingErrorImpl();

  @override
  String toString() {
    return 'StatusFailure.loadingError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingError,
  }) {
    return loadingError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingError,
  }) {
    return loadingError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingError value) loadingError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingError value)? loadingError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class LoadingError implements StatusFailure {
  const factory LoadingError() = _$LoadingErrorImpl;
}
