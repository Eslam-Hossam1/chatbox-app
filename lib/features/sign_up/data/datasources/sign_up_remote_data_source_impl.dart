import '../../../../core/networking/api_consumer.dart';
import '../../../../core/networking/end_points.dart';
import 'sign_up_remote_data_source.dart';
import '../models/sign_up_request_body.dart';

class SignUpRemoteDataSourceImpl implements SignUpRemoteDataSource {
  final ApiConsumer _apiConsumer;

  SignUpRemoteDataSourceImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;

  @override
  Future<void> signUp({required SignUpRequestBody signUpRequestBody}) async {
    return await _apiConsumer.post(
      EndPoints.signUp,
      data: signUpRequestBody.toJson(),
    );
  }
}
