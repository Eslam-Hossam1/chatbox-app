import 'package:flutter/material.dart';

import '../custom_circular_progress_indecator.dart';
import 'custom_button.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomButton(
      width: double.infinity,
      child: Center(
        child: CustomCircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
