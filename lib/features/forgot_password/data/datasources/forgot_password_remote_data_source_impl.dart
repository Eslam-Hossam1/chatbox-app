import '../../../../core/networking/api_consumer.dart';
import '../../../../core/networking/end_points.dart';
import 'forgot_password_remote_data_source.dart';
import '../models/forgot_password_request_body.dart';

class ForgotPasswordRemoteDataSourceImpl implements ForgotPasswordRemoteDataSource {
  final ApiConsumer _apiConsumer;

  ForgotPasswordRemoteDataSourceImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;

  @override
  Future<void> forgotPassword({required ForgotPasswordRequestBody forgotPasswordRequestBody}) async {
    return await _apiConsumer.post(
      EndPoints.sendSignUpOtp, // Using the same endpoint as sign up OTP
      data: forgotPasswordRequestBody.toJson(),
    );
  }
}
