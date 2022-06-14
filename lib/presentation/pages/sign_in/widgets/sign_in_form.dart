// import 'package:flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ltemanager2/application/auth/auth_bloc.dart';
import 'package:ltemanager2/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ltemanager2/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                Flushbar(
                  message: failure.map(
                    requestLogoutFailes: (_) => null,
                    notAuthenticated: (_) => null,
                    snonceError: (_) => 'Snonce error',
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                    notImplemented: (_) => 'Not yet implemented',
                    cannotSetBaseUrl: (_) => 'Cannot set baseURL',
                  ),
                  duration: const Duration(seconds: 4),
                ).show(context);
              },
              (_) {
                context.router.replace(const HomeRoute());
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: (state.showErrorMessages)
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/logo/ltemanagerLogo.png',
                    height: 100,
                  ),
                ),
                const Spacer(),
                AutofillGroup(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: TextFormField(
                            autofillHints: const [AutofillHints.url],
                            style: const TextStyle(
                              color: Color(0xFF100E25),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            keyboardType: TextInputType.url,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'URL',
                              fillColor: Color(0xFF9B9B9B),
                              labelStyle: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            autocorrect: false,
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.ipAddressChanged(value)),
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .ipAddress
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    invalidIPAddress: (_) =>
                                        "L'indirizzo URL digitato non è corretto",
                                    iPAddressMustStartWithProtocol: (_) =>
                                        "L'indirizzo URL deve iniziare con http o https",
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: TextFormField(
                            autofillHints: const [AutofillHints.username],
                            style: const TextStyle(
                              color: Color(0xFF100E25),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Username',
                              fillColor: Color(0xFF9B9B9B),
                              labelStyle: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            autocorrect: false,
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.usernameChanged(value)),
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .username
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    invalidEmail: (_) =>
                                        "Lo username non è valido",
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: TextFormField(
                            autofillHints: const [AutofillHints.password],
                            style: const TextStyle(
                              color: Color(0xFF100E25),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: InputDecoration(
                              fillColor: const Color(0xFF9B9B9B),
                              border: InputBorder.none,
                              labelText: 'Password',
                              labelStyle: const TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              suffixIcon: IconButton(
                                icon: (context
                                        .read<SignInFormBloc>()
                                        .state
                                        .isPasswordVisible)
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: () =>
                                    context.read<SignInFormBloc>().add(
                                          SignInFormEvent.passwordVisible(
                                            !context
                                                .read<SignInFormBloc>()
                                                .state
                                                .isPasswordVisible,
                                          ),
                                        ),
                              ),
                            ),
                            obscureText: !context
                                .read<SignInFormBloc>()
                                .state
                                .isPasswordVisible,
                            autocorrect: false,
                            onChanged: (value) => context
                                .read<SignInFormBloc>()
                                .add(SignInFormEvent.passwordChanged(value)),
                            validator: (_) => context
                                .read<SignInFormBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    shortPassword: (_) =>
                                        'La password è troppo corta',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                            onEditingComplete: () =>
                                TextInput.finishAutofillContext(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const SizedBox(height: 8),
                OutlinedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(250, 50)),
                    backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor,
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  onPressed: () {
                    context.read<SignInFormBloc>().add(
                          const SignInFormEvent
                              .signInWithEmailAndPasswordPressed(),
                        );
                  },
                  child: Text(
                    'SIGN_IN'.tr(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 34),
                if (state.isSubmitting) ...[
                  const SizedBox(height: 10),
                  const LinearProgressIndicator(),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
