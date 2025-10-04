import '../../../../../core/services/storage_services/secure_storage/secure_storage_keys.dart';
import '../../../../../core/services/storage_services/secure_storage/secure_storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/params/login_params.dart';
import '../../../domain/usecases/login_usecase.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUsecase _loginUseCase;
  final SecureStorageService _secureStorageService;

  LoginCubit({
    required LoginUsecase loginUseCase,
    required SecureStorageService secureStorageService
  }) : _loginUseCase = loginUseCase,
       _secureStorageService = secureStorageService,
       super(const LoginInitial());

  String email = '';
  String password = '';

  Future<void> login() async {
    emit(LoginLoading());

    final result = await _loginUseCase.call(
      LoginParams(
        email: email,
        password: password,
      ),
    );

    result.fold(
      (failure) {
        emit(LoginFailure(errMessage: failure.errMsg));
      },
      (loginEntity) async {
        // Store the token
        await _secureStorageService.setData(
          key: SecureStorageKeys.accessToken,
          value: loginEntity.token,
        );
        emit(LoginSuccess());
      },
    );
  }
}
