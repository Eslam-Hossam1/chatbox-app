import '../../services/storage_services/secure_storage/secure_storage_service.dart';

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

  static List<GoRoute> routes = [
    signUp,
    login,
  ];
}
