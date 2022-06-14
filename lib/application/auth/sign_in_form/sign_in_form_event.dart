part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.ipAddressChanged(String ipAddrStr) =
      IpAddressChanged;
  const factory SignInFormEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  // ignore: avoid_positional_boolean_parameters
  const factory SignInFormEvent.passwordVisible(bool visible) = PasswordVisible;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
}
