part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required IPAddress ipAddress,
    required Username username,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isPasswordVisible,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        ipAddress: IPAddress(''),
        username: Username(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        isPasswordVisible: false,
        authFailureOrSuccessOption: none(),
      );
}
