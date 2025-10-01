import 'package:chatbox_app/core/theme/app_text_styles.dart';
import 'package:chatbox_app/core/theme/theme_colors_extension.dart';
import 'package:chatbox_app/core/widget/closed_eye_icon.dart';
import 'package:chatbox_app/core/widget/opened_eye_svg.dart';
import 'package:flutter/material.dart';

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
        suffixIconConstraints: BoxConstraints(),
        suffixIcon: IconButton(
          onPressed: () {
            toggleObsecure();
          },
          icon:
              isObscure == true ? const OpenedEyeSvg() : const ClosedEyeIcon(),
        ),
        focusedBorder: buildBorder(context.primaryColor),
        focusedErrorBorder: buildBorder(Color(0xffFF2D1B)),
        errorBorder: buildBorder(Color(0xffFF2D1B)),
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
