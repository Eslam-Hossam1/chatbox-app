import 'package:chatbox_app/core/utils/form_validators.dart';
import 'package:chatbox_app/core/widget/text_form_fields/sliver_auth_text_form_field.dart';
import 'package:flutter/material.dart';

class DisplayNameSliverTextFormField extends StatelessWidget {
  const DisplayNameSliverTextFormField({
    super.key,
    required this.onSaved,
  });
  final void Function(String?) onSaved;
  @override
  Widget build(BuildContext context) {
    return SliverAuthTextFormField(
      title: 'Display name',
      hint: 'Display name, e.g. John Doe',
      onSaved: onSaved,
      validator: FormValidators.customTextFormFieldValidator,
    );
  }
}
