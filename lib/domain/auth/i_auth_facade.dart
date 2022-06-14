import 'package:dartz/dartz.dart';
import 'package:ltemanager2/domain/auth/auth_failure.dart';
import 'package:ltemanager2/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> isSignedIn();

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required IPAddress url,
    required Username username,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signOut();
}
