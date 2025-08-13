import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../themes/colors.dart' show AppColors;

mixin LoaderAndMessagesMixin<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  var isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen = true;
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) {
          return LoadingAnimationWidget.threeArchedCircle(
            color: Colors.white,
            size: 60,
          );
        },
      );
    }
  }

  void hideLoader() {
    if (isOpen) {
      isOpen = false;
      Navigator.of(context).pop();
    }
  } 

  void _showSnakBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  void showErrorSnackbar(String message) {
    _showSnakBar(message, AppColors.redColor);
  }

  void showSuccessSnackBar(String message) {
    _showSnakBar(message, Colors.green);
  }

  void showWarningSnackBar(String message) {
    _showSnakBar(message, AppColors.yellow);
  }

  void showInfoSnackBar(String message) {
    _showSnakBar(message, AppColors.darkGrey);
  }
}
