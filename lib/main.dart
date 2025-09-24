import 'package:chatbox_app/chatbox_app.dart';
import 'package:chatbox_app/core/config/app_initializer.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initialize();
  runApp(const ChatboxApp());
}
