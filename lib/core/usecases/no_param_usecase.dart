import 'package:chatbox_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract interface class NoParamUsecase<FailureType extends Failure, T> {
  Future<Either<FailureType, T>> call();
}
