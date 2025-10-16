import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/dialog_helper/dialog_helper.dart';
import '../../../../core/routing/routes_paths.dart';
import '../manager/login_cubit/login_cubit.dart';
import '../manager/login_cubit/login_state.dart';
import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.go(RoutePaths.home);
        }
        if (state is LoginFailure) {
          DialogHelper.showErrorDialog(
            context,
            errorMessage: state.errMessage,
          );
        }
      },
      child: const Scaffold(
        body: SafeArea(
          child: LoginViewBody(),
        ),
      ),
    );
  }
}
