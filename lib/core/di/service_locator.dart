import 'package:chatbox_app/core/services/auth_credentials_manager/auth_credentials_manager.dart';
import 'package:chatbox_app/core/services/jwt_decoder/jwt_decoder_service_impl.dart';
import 'package:chatbox_app/core/cache/secure_storage_helper.dart/secure_storage_helper.dart';
import 'package:chatbox_app/core/cache/shared_pref/shared_prefernce_helper.dart';
import 'package:chatbox_app/core/networking/dio_consumer.dart';
import 'package:chatbox_app/core/services/onboarding_cache_service.dart';
import 'package:chatbox_app/features/otp/data/data_sources/otp_remote_data_source_impl.dart';
import 'package:chatbox_app/features/otp/data/repos/otp_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
  getIt.registerSingleton<OtpRepoImpl>(
    OtpRepoImpl(
      otpRemoteDataSource:
          OtpRemoteDataSourceImpl(apiConsumer: getIt<DioConsumer>()),
    ),
  );
}

Future<void> _setupCaching() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerSingleton<SharedPreferencesHelper>(
    SharedPreferencesHelper(sharedPreferences),
  );

  AndroidOptions getAndroidOptions() => const AndroidOptions(
      );

  final secureStorage = FlutterSecureStorage(
    aOptions: getAndroidOptions(),
  );

  getIt.registerSingleton<SecureStorageHelper>(
    SecureStorageHelper(secureStorage),
  );

  getIt.registerSingleton<AuthCredentialsManager>(
    AuthCredentialsManager(
        secureStorageHelper: getIt<SecureStorageHelper>(),
        jwtDecoder: JwtDecoderServiceImpl()),
  );
}
