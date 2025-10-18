import 'package:flutter/material.dart';

import 'chatbox_app.dart';
import 'core/config/app_initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initialize();
  runApp(const ChatboxApp());
}
