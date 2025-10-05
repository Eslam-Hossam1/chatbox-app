import '../../../../../core/widgets/sliver_sticky_footer.dart';
import '../../manager/reset_password_cubit/reset_password_cubit.dart';
import '../../manager/reset_password_cubit/reset_password_state.dart';
import 'reset_password_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordButtonSection extends StatelessWidget {
  const ResetPasswordButtonSection({
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
        BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
          builder: (context, state) {
            return state is ResetPasswordLoading
                ? const CircularProgressIndicator()
                : ResetPasswordButton(
                    enableAutoValidation: enableAutoValidation,
                    formKey: formKey,
                  );
          },
        ),
      ],
    );
  }
}
