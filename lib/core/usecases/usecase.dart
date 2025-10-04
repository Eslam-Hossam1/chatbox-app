import '../errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract interface class Usecase<FailureType extends Failure, SuccessType,
    Params> {
  Future<Either<FailureType, SuccessType>> call(Params params);
}
