import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:chatbox_app/core/Functions/custom_adaptive_awesome_dialog.dart';
import 'package:flutter/material.dart';

abstract class DialogHelper {
  static void showErrorDialog(
    BuildContext context, {
    required String errorMessage,
    String? title,
    String? btnOkText,
    void Function()? btnOkOnPress,
    void Function(DismissType)? onDismissCallback,
    Widget? btnOk,
  }) {
    customAdaptiveAwesomeDialog(
      context,
      dialogType: DialogType.error,
      title: title ?? 'Error',
      desc: errorMessage,
      btnOkOnPress: btnOkOnPress ?? () {},
      btnOkText: btnOkText,
      btnOk: btnOk,
      onDismissCallback: onDismissCallback ?? (DismissType _) {},
    ).show();
  }

  static void showWarningDialog(
    BuildContext context, {
    required String errorMessage,
    String? title,
    String? btnOkText,
    void Function()? btnOkOnPress,
    void Function(DismissType)? onDismissCallback,
    Widget? btnOk,
    Color? btnOkColor,
    Color? btnCancelColor,
    String? btnCanceltext,
  }) {
    customAdaptiveAwesomeDialog(
      context,
      dialogType: DialogType.warning,
      title: title ?? 'Warning',
      desc: errorMessage,
      btnOkOnPress: btnOkOnPress,
      btnOkText: btnOkText ?? 'OK',
      btnOk: btnOk,
      btnOkColor: btnOkColor,
      onDismissCallback: onDismissCallback,
      btnCancelColor: btnCancelColor,
      btnCancelText: btnCanceltext ?? 'Cancel',
      btnCancelOnPress: () {},
    ).show();
  }

  static void showEndSessionDialog(
    BuildContext context, {
    String? title,
    String? btnOkText,
    void Function()? btnOkOnPress,
    void Function(DismissType)? onDismissCallback,
    Widget? btnOk,
    Color? btnOkColor,
    Color? btnCancelColor,
    String? btnCanceltext,
  }) {
    customAdaptiveAwesomeDialog(
      context,
      dialogType: DialogType.warning,
      title: title ?? 'Warning',
      desc: 'Your session has expired, please login again',
      btnOkOnPress: btnOkOnPress,
      btnOkText: btnOkText,
      btnOk: btnOk,
      btnOkColor: btnOkColor,
      onDismissCallback: onDismissCallback,
    ).show();
  }

  static void showSuccessDialog(
    BuildContext context, {
    required String successMessage,
    String? title,
    String? btnOkText,
    void Function()? btnOkOnPress,
    void Function(DismissType)? onDismissCallback,
    Widget? btnOk,
    Color? btnOkColor,
  }) {
    customAdaptiveAwesomeDialog(
      context,
      dialogType: DialogType.success,
      title: title ?? 'Success',
      desc: successMessage,
      btnOkOnPress: btnOkOnPress,
      btnOk: btnOk,
      btnOkText: btnOkText,
      btnOkColor: btnOkColor,
      onDismissCallback: onDismissCallback,
    ).show();
  }
}
