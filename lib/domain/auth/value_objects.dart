import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:ltemanager2/domain/core/failures.dart';
import 'package:ltemanager2/domain/core/value_objects.dart';
import 'package:ltemanager2/domain/core/value_validators.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(
      right(input),
    );
  }

  const Username._(this.value);
}

class IPAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IPAddress(String input) {
    return IPAddress._(
      validateIPAddress(input),
    );
  }

  const IPAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
