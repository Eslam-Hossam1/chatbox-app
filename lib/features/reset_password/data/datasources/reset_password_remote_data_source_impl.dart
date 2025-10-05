import '../../../../core/networking/api_consumer.dart';
import '../../../../core/networking/end_points.dart';
import 'reset_password_remote_data_source.dart';
import '../models/reset_password_request_body.dart';

class ResetPasswordRemoteDataSourceImpl
    implements ResetPasswordRemoteDataSource {
  final ApiConsumer _apiConsumer;

  ResetPasswordRemoteDataSourceImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;

  @override
  Future<void> resetPassword(
      {required ResetPasswordRequestBody resetPasswordRequestBody}) async {
    return await _apiConsumer.post(
      EndPoints.resetPassword,
      data: resetPasswordRequestBody.toJson(),
    );
  }
}
