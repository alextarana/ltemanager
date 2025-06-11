import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ltemanager2/domain/auth/i_auth_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _huaweiAuthFacade;
  final IAuthFacade _zteAuthFacade;
  final SharedPreferences _preferences;

  AuthBloc(
    this._huaweiAuthFacade,
    @Named('RouterZteAuthFacade') this._zteAuthFacade,
    this._preferences,
  ) : super(const AuthState.initial()) {
    on<SignOut>(
      (event, emit) async {
        final result = await _getFacade().signOut();
        emit(
          result.fold(
            (_) => const AuthState.authenticated(),
            (_) => const AuthState.unauthenticated(),
          ),
        );
      },
    );
    on<AuthCheckRequested>((event, emit) async {
      final userOption = await _getFacade().isSignedIn();

      debugPrint(userOption.toString());

      emit(
        userOption.fold(
          (_) => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        ),
      );
    });
  }

  IAuthFacade _getFacade() {
    final manufacturer = _preferences.getString('_manufacturer') ?? 'huawei';
    return manufacturer == 'zte' ? _zteAuthFacade : _huaweiAuthFacade;
  }
}
