import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ltemanager2/domain/core/entity.dart';
import 'package:ltemanager2/domain/core/failures.dart';
import 'package:ltemanager2/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements IEntity {
  const factory User({
    required UniqueId id,
    required StringSingleLine name,
    required StringSingleLine city,
    required StringSingleLine username,
    required StringSingleLine planPrice,
    required Option<bool> skuEnabled,
    required StringSingleLine paymentPeriod,
    required StringSingleLine status,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) {
    return _User(
      id: UniqueId.fromUniqueString(json['_id'] as String),
      name: StringSingleLine(json['name'] as String),
      city: StringSingleLine(json['city'] as String),
      username: StringSingleLine(json['shopUserName'] as String),
      planPrice: StringSingleLine(json['subPlanPrice'] as String),
      skuEnabled: json['customSKUassociation'] != null
          ? some(json['customSKUassociation'] as bool)
          : none(),
      paymentPeriod: StringSingleLine(json['subPlanPaymentPeriod'] as String),
      status: StringSingleLine(json['subPlanStatus'] as String),
    );
  }
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(paymentPeriod.failureOrUnit)
        .andThen(this.id.failureOrUnit)
        .andThen(status.failureOrUnit)
        .andThen(paymentPeriod.failureOrUnit)
        .andThen(planPrice.failureOrUnit)
        .andThen(username.failureOrUnit)
        .andThen(city.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
