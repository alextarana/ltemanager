import 'package:dartz/dartz.dart';
import 'package:ltemanager2/domain/status/status_failure.dart';

abstract class IStatusFacade {
  Stream<Either<StatusFailure, Unit>> onUpdated();
}
