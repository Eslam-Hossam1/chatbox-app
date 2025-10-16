import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/sliver_sticky_footer.dart';
import '../../manager/forgot_password_cubit/forgot_password_cubit.dart';
import '../../manager/forgot_password_cubit/forgot_password_state.dart';
import 'forgot_password_button.dart';

class ForgotPasswordButtonSection extends StatelessWidget {
  const ForgotPasswordButtonSection({
    super.key,
    required this.formKey,
    required this.enableAutoValidation,
  });
  final GlobalKey<FormState> formKey;
  final void Function() enableAutoValidation;

  @override
  Widget build(BuildContext context) {
    return SliverStickyFooter(
      bottomPadding: 20,
      children: [
        BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
          builder: (context, state) {
            return state is ForgotPasswordLoading
                ? const CircularProgressIndicator()
                : ForgotPasswordButton(
                    enableAutoValidation: enableAutoValidation,
                    formKey: formKey,
                  );
          },
        ),
      ],
    );
  }
}
