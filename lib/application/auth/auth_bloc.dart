import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ltemanager2/domain/auth/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<SignOut>(
      (event, emit) async {
        final result = await _authFacade.signOut();
        emit(
          result.fold(
            (_) => const AuthState.authenticated(),
            (_) => const AuthState.unauthenticated(),
          ),
        );
      },
    );
    on<AuthCheckRequested>((event, emit) async {
      final userOption = await _authFacade.isSignedIn();

      debugPrint(userOption.toString());

      emit(
        userOption.fold(
          (_) => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        ),
      );
    });
  }
}
