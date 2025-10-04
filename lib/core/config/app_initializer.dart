import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../di/service_locator.dart';

abstract class AppInitializer {
  static Future<void> initialize() async {
    await setupServiceLocator();
    await _initHydratedBloc();
  }

  static Future<void> _initHydratedBloc() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );
  }
}
