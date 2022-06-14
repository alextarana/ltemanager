import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.requestLogoutFailes() = RequestLogoutFailed;
  const factory AuthFailure.notAuthenticated() = NotAuthenticated;
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.notImplemented() = FunctionalityNotImplemented;
  const factory AuthFailure.snonceError() = SnonceError;
  const factory AuthFailure.cannotSetBaseUrl() = CannotSetBaseUrl;
}
