import 'package:flutter/material.dart';

import '../../utils/form_validators.dart';
import 'sliver_auth_text_form_field.dart';

class EmailSliverTextFormField extends StatelessWidget {
  const EmailSliverTextFormField({
    super.key,
    required this.onSaved,
    this.hint,
  });

  final void Function(String?) onSaved;
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return SliverAuthTextFormField(
      title: 'Email',
      hint:hint?? 'Email, e.g. example@gmail.com',
      onSaved: onSaved,
      validator: FormValidators.emailTextFormFieldValidator,
    );
  }
}
