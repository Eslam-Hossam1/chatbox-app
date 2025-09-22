import 'package:chatbox_app/core/cubit/theme_cubit.dart';
import 'package:chatbox_app/core/routing/app_router.dart';
import 'package:chatbox_app/core/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatboxApp extends StatelessWidget {
  const ChatboxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, mode) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          themeMode: mode,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
        );
      },
    );
  }
}
