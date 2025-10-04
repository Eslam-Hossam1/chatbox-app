import 'package:dartz/dartz.dart';

import '../../../../core/errors/api_failure.dart';
import '../entities/login_entity.dart';
import '../params/login_params.dart';

abstract interface class LoginRepo {
  Future<Either<ApiFailure, LoginEntity>> login({required LoginParams loginParams});
}
