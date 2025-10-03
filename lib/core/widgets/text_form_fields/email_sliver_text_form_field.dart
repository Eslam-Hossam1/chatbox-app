import 'package:chatbox_app/core/utils/form_validators.dart';
import 'package:chatbox_app/core/widgets/text_form_fields/sliver_auth_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailSliverTextFormField extends StatelessWidget {
  const EmailSliverTextFormField({
    super.key,
    required this.onSaved,
  });

  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return SliverAuthTextFormField(
      title: 'Email',
      hint: 'Email, e.g. example@gmail.com',
      onSaved: onSaved,
      validator: FormValidators.emailTextFormFieldValidator,
    );
  }
}
