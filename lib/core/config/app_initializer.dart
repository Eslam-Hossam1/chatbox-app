import 'package:chatbox_app/core/di/service_locator.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

abstract class AppInitializer {
  static Future<void> initialize() async {
    await _initServiceLocator();
    await _initHydratedBloc();
  }

  static Future<void> _initHydratedBloc() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );
  }

  static Future<void> _initServiceLocator() async {
    await setupServiceLocator();
  }
}
