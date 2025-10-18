import '../../../../../core/services/auth_credentials_manager/auth_credentials_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/params/login_params.dart';
import '../../../domain/usecases/login_usecase.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUsecase _loginUseCase;
  final AuthCredentialsManager _authCredentialsManager;

  LoginCubit(
      {required LoginUsecase loginUseCase,
      required AuthCredentialsManager authCredentialsManager})
      : _loginUseCase = loginUseCase,
        _authCredentialsManager = authCredentialsManager,
        super(const LoginInitial());

  String email = '';
  String password = '';

  Future<void> login() async {
    emit(const LoginLoading());

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
        await _authCredentialsManager.storeAccessToken(
          loginEntity.token,
        );
        emit(const LoginSuccess());
      },
    );
  }
}
