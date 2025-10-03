import 'package:chatbox_app/core/cache/shared_pref/shared_prefernce_helper.dart';
import 'package:chatbox_app/core/networking/dio_consumer.dart';
import 'package:chatbox_app/core/services/onboarding_cache_service.dart';
import 'package:chatbox_app/features/sign_up/data/datasources/sign_up_remote_data_source_impl.dart';
import 'package:chatbox_app/features/sign_up/data/repos/sign_up_repo_impl.dart';
import 'package:chatbox_app/features/sign_up/domain/usecases/sign_up_usecase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
Future<void> setupServiceLocator() async {
  await _setupCaching();
  getIt.registerSingleton<OnBoardingCacheService>(
    OnBoardingCacheService(
      sharedPreferencesHelper: getIt<SharedPreferencesHelper>(),
    ),
  );

  getIt.registerSingleton<DioConsumer>(
    DioConsumer(
      dio: Dio(),
    ),
  );
}

Future<void> _setupCaching() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerSingleton<SharedPreferencesHelper>(
    SharedPreferencesHelper(sharedPreferences),
  );
}
