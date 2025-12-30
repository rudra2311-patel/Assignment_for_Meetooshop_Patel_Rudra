import 'package:flutter/material.dart';
import 'package:ftoast/ftoast.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

import 'strings.dart';
import '../main.dart';

// Shows error when fields are empty
void showEmptyFieldsError(BuildContext context) {
  FToast.toast(
    context,
    msg: AppStrings.error,
    subMsg: AppStrings.fillFields,
    corner: 20.0,
    duration: 2000,
    padding: const EdgeInsets.all(20),
  );
}

// Shows warning when trying to delete but no tasks exist
void showNoTasksWarning(BuildContext context) {
  PanaraInfoDialog.showAnimatedGrow(
    context,
    title: AppStrings.error,
    message: AppStrings.noTasks,
    buttonText: "OK",
    onTapDismiss: () => Navigator.pop(context),
    panaraDialogType: PanaraDialogType.warning,
  );
}

// Confirms before deleting all tasks
void showDeleteAllConfirmation(BuildContext context) {
  PanaraConfirmDialog.show(
    context,
    title: AppStrings.deleteAll,
    message: AppStrings.deleteAllMsg,
    confirmButtonText: AppStrings.confirm,
    cancelButtonText: AppStrings.cancel,
    onTapCancel: () => Navigator.pop(context),
    onTapConfirm: () {
      TaskProvider.of(context).deleteAllTasks();
      Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.error,
    barrierDismissible: false,
  );
}

const String lottieAssetPath = 'assets/lottie/1.json';
