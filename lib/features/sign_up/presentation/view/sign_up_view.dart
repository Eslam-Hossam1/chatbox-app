import 'package:chatbox_app/core/helper/dialog_helper.dart';
import 'package:chatbox_app/core/routing/routes_paths.dart';
import 'package:chatbox_app/features/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:chatbox_app/features/sign_up/presentation/manager/sign_up_cubit/sign_up_state.dart';
import 'package:chatbox_app/features/sign_up/presentation/view/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          context.go(RoutePaths.otp);
        }
        if (state is SignUpFailure) {
          DialogHelper.showErrorDialog(
            context,
            errorMessage: state.errMessage,
          );
        }
      },
      child: const Scaffold(
        body: SafeArea(
          child: SignUpViewBody(),
        ),
      ),
    );
  }
}
