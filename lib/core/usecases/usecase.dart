import 'package:dartz/dartz.dart';

import '../errors/failures.dart';

abstract interface class Usecase<FailureType extends Failure, SuccessType,
    Params> {
  Future<Either<FailureType, SuccessType>> call(Params params);
}
