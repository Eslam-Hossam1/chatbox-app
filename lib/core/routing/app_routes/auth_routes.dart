import 'package:chatbox_app/core/routing/routes_paths.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthRoutes {
  static GoRoute signUp = GoRoute(
    path: RoutePaths.signUp,
    builder: (context, state) => Scaffold(
      body: Center(
        child: Text('Sign Up PlaceHolder'),
      ),
    ),
  );
  static List<GoRoute> routes = [
    signUp,
  ];
}
