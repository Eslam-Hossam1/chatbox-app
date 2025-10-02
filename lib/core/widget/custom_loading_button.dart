import 'package:chatbox_app/core/widget/custom_button.dart';
import 'package:chatbox_app/core/widget/custom_circular_progress_indecator.dart';
import 'package:flutter/material.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: double.infinity,
      child: Center(
        child: CustomCircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
