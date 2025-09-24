import 'package:chatbox_app/core/cache/shared_pref/shared_prefernce_helper.dart';
import 'package:chatbox_app/core/services/onboarding_cache_service.dart';
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
}

Future<void> _setupCaching() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerSingleton<SharedPreferencesHelper>(
    SharedPreferencesHelper(sharedPreferences),
  );
}
