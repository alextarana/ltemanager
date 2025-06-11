import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ltemanager2/domain/auth/auth_failure.dart';
import 'package:ltemanager2/domain/auth/i_auth_facade.dart';
import 'package:ltemanager2/domain/auth/value_objects.dart';
import 'package:ltemanager2/domain/core/manufacturer.dart';
import 'package:ltemanager2/injection.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<UsernameChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            username: Username(event.usernameStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<IpAddressChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            ipAddress: IPAddress(event.ipAddrStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<PasswordChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            password: Password(event.passwordStr),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<SignInWithEmailAndPasswordPressed>(
      (event, emit) async {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isIpValid = state.ipAddress.isValid();
        final isUsernameValid = state.username.isValid();
        final isPasswordValid = state.password.isValid();

        if (isUsernameValid && isPasswordValid && isIpValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          final facade = (currentManufacturer == Manufacturer.huawei)
              ? _authFacade
              : getIt<IAuthFacade>(instanceName: 'RouterGenericAuthFacade');
          failureOrSuccess = await facade.signInWithEmailAndPassword(
            url: state.ipAddress,
            username: state.username,
            password: state.password,
          );
        }
        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
    );
    on<PasswordVisible>((event, emit) {
      emit(
        state.copyWith(
          isPasswordVisible: event.visible,
        ),
      );
    });
  }
}
