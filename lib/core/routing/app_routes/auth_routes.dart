import 'package:chatbox_app/core/services/storage_services/secure_storage/secure_storage_service.dart';

import '../../networking/dio_consumer.dart';
import '../routes_paths.dart';
import '../../di/service_locator.dart';
import '../../../features/sign_up/data/datasources/sign_up_remote_data_source_impl.dart';
import '../../../features/sign_up/data/repos/sign_up_repo_impl.dart';
import '../../../features/sign_up/domain/usecases/sign_up_usecase.dart';
import '../../../features/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import '../../../features/sign_up/presentation/view/sign_up_view.dart';
import '../../../features/login/data/datasources/login_remote_data_source_impl.dart';
import '../../../features/login/data/repos/login_repo_impl.dart';
import '../../../features/login/domain/usecases/login_usecase.dart';
import '../../../features/login/presentation/manager/login_cubit/login_cubit.dart';
import '../../../features/login/presentation/view/login_view.dart';
import '../../../features/forgot_password/data/datasources/forgot_password_remote_data_source_impl.dart';
import '../../../features/forgot_password/data/repos/forgot_password_repo_impl.dart';
import '../../../features/forgot_password/domain/usecases/forgot_password_usecase.dart';
import '../../../features/forgot_password/presentation/manager/forgot_password_cubit/forgot_password_cubit.dart';
import '../../../features/forgot_password/presentation/view/forgot_password_view.dart';
import '../../../features/reset_password/data/datasources/reset_password_remote_data_source_impl.dart';
import '../../../features/reset_password/data/repos/reset_password_repo_impl.dart';
import '../../../features/reset_password/domain/usecases/reset_password_usecase.dart';
import '../../../features/reset_password/presentation/manager/reset_password_cubit/reset_password_cubit.dart';
import '../../../features/reset_password/presentation/view/reset_password_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthRoutes {
  static GoRoute signUp = GoRoute(
    path: RoutePaths.signUp,
    builder: (context, state) => BlocProvider(
      create: (context) => SignUpCubit(
        signUpUseCase: SignUpUsecase(
          signUpRepo: SignUpRepoImpl(
            signUpRemoteDataSource: SignUpRemoteDataSourceImpl(
              apiConsumer: getIt<DioConsumer>(),
            ),
          ),
        ),
      ),
      child: SignUpView(),
    ),
  );

  static GoRoute login = GoRoute(
    path: RoutePaths.login,
    builder: (context, state) => BlocProvider(
      create: (context) => LoginCubit(
        secureStorageService: getIt<SecureStorageService>(),
        loginUseCase: LoginUsecase(
          loginRepo: LoginRepoImpl(
            loginRemoteDataSource: LoginRemoteDataSourceImpl(
              apiConsumer: getIt<DioConsumer>(),
            ),
          ),
        ),
      ),
      child: LoginView(),
    ),
  );

  static GoRoute forgotPassword = GoRoute(
    path: RoutePaths.forgotPassword,
    builder: (context, state) => BlocProvider(
      create: (context) => ForgotPasswordCubit(
        forgotPasswordUseCase: ForgotPasswordUsecase(
          forgotPasswordRepo: ForgotPasswordRepoImpl(
            forgotPasswordRemoteDataSource: ForgotPasswordRemoteDataSourceImpl(
              apiConsumer: getIt<DioConsumer>(),
            ),
          ),
        ),
      ),
      child: ForgotPasswordView(),
    ),
  );

  static GoRoute resetPassword = GoRoute(
    path: RoutePaths.resetPassword,
    builder: (context, state) => BlocProvider(
      create: (context) => ResetPasswordCubit(
        resetPasswordUseCase: ResetPasswordUsecase(
          resetPasswordRepo: ResetPasswordRepoImpl(
            resetPasswordRemoteDataSource: ResetPasswordRemoteDataSourceImpl(
              apiConsumer: getIt<DioConsumer>(),
            ),
          ),
        ),
      ),
      child: ResetPasswordView(),
    ),
  );

  static List<GoRoute> routes = [
    signUp,
    login,
    forgotPassword,
    resetPassword,
  ];
}
