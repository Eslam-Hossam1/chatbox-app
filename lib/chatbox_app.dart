import 'package:chatbox_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

class ChatboxApp extends StatelessWidget {
  const ChatboxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
    );
  }
}
