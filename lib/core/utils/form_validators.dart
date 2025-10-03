import 'package:chatbox_app/core/utils/app_regex.dart';

abstract class FormValidators {
  static const String thisFieldRequired = 'This field required';
  static const String atLeastSixCharacters = 'At least 6 characters';
  static const String enterCompletePin = 'Please enter the complete PIN code.';
  static const String invalidEmail =
      'The email address is not valid. Please enter a valid email.';

  static String? customTextFormFieldValidator(String? value) {
    if (isValueEmpty(value)) {
      return thisFieldRequired;
    } else {
      return null;
    }
  }

  static String? emailTextFormFieldValidator(String? value) {
    if (isValueEmpty(value)) {
      return thisFieldRequired;
    } else if (!AppRegex.isValidEmail(value!)) {
      return invalidEmail;
    } else {
      return null;
    }
  }

  static String? pincodeTextFormFieldValidator(String? value) {
    if (isValueEmpty(value) || value!.length < 6) {
      return enterCompletePin;
    } else {
      return null;
    }
  }

  static String? passwordTextFormFieldValidator(String? value) {
    if (isValueEmpty(value) || value!.length < 6) {
      return atLeastSixCharacters;
    } else {
      return null;
    }
  }

  static bool isValueEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
