import 'package:dartz/dartz.dart';

import '../errors/failures.dart';

abstract interface class NoParamUsecase<FailureType extends Failure, T> {
  Future<Either<FailureType, T>> call();
}
