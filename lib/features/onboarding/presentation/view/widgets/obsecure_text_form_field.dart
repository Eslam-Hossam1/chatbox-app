import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/theme_colors_extension.dart';
import '../../../../../core/widgets/closed_eye_icon.dart';
import '../../../../../core/widgets/opened_eye_svg.dart';

class ObsecureTextFormField extends StatefulWidget {
  const ObsecureTextFormField({
    super.key,
    required this.hint,
    this.onSaved,
    this.validator,
    this.onChanged,
  });
  final String hint;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  State<ObsecureTextFormField> createState() => _ObsecureTextFormFieldState();
}

class _ObsecureTextFormFieldState extends State<ObsecureTextFormField> {
  bool isObscure = true;

  void toggleObsecure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      obscureText: isObscure,
      cursorColor: context.primaryColor,
      style: AppTextStyles.medium16(context)
          .copyWith(color: context.mainTextColor),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        hintText: widget.hint,
        hintStyle: AppTextStyles.regular14(context).copyWith(
          color: context.secondaryTextColor,
        ),
        suffixIconConstraints: const BoxConstraints(),
        suffixIcon: IconButton(
          onPressed: () {
            toggleObsecure();
          },
          icon:
              isObscure == true ? const OpenedEyeSvg() : const ClosedEyeIcon(),
        ),
        focusedBorder: buildBorder(context.primaryColor),
        focusedErrorBorder: buildBorder(const Color(0xffFF2D1B)),
        errorBorder: buildBorder(const Color(0xffFF2D1B)),
        enabledBorder: buildBorder(
          context.outlineColor,
          2,
        ),
      ),
    );
  }

  UnderlineInputBorder buildBorder(Color color, [double width = 1.5]) {
    return UnderlineInputBorder(
        borderSide: BorderSide(color: color, width: width));
  }
}
