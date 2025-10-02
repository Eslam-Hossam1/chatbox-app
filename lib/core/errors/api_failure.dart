import 'package:chatbox_app/core/errors/failures.dart';

abstract class ApiFailure extends Failure {
  const ApiFailure(
    super.errMsg,
  );
}
