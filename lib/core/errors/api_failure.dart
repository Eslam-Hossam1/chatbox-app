import 'failures.dart';

abstract class ApiFailure extends Failure {
  const ApiFailure(
    super.errMsg,
  );
}
