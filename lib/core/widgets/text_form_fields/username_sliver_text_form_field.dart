import '../../utils/form_validators.dart';
import 'sliver_auth_text_form_field.dart';
import 'package:flutter/material.dart';

class UsernameSliverTextFormField extends StatelessWidget {
  const UsernameSliverTextFormField({
    super.key,
    required this.onSaved,
  });

  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return SliverAuthTextFormField(
      title: 'Username',
      hint: 'Name, unique to you',
      onSaved: onSaved,
      validator: FormValidators.customTextFormFieldValidator,
    );
  }
}
