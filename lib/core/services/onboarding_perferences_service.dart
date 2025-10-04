import 'storage_services/preferences/preferences_keys.dart';
import 'storage_services/preferences/preferences_service.dart';

class OnboardingPreferncesService {
  final PreferencesService _preferencesService;

  OnboardingPreferncesService({
    required PreferencesService preferencesService,
  }) : _preferencesService = preferencesService;

  Future<void> setOnBoardingCompletedToTrue() async {
    await _preferencesService.setData(
      key: PreferencesKeys.onboardingCompleted,
      value: true,
    );
  }

  bool isOnBoardingCompleted() {
    bool? isOnBoardingCompleted = _preferencesService.getBool(
      key: PreferencesKeys.onboardingCompleted,
    );
    return isOnBoardingCompleted == null ? false : true;
  }
}
