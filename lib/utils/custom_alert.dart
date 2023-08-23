import 'package:flutter/material.dart';

class ReusableAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final String positiveButtonText;
  final String? negativeButtonText;
  final VoidCallback onPositivePressed;
  final VoidCallback? onNegativePressed;

  const ReusableAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.positiveButtonText,
    this.negativeButtonText,
    required this.onPositivePressed,
    this.onNegativePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(dialogBackgroundColor: Theme.of(context).canvasColor),
      child: AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: _buildActions(context),
      ),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    List<Widget> actions = [];

    actions.add(TextButton(
      onPressed: onPositivePressed,
      child: Text(positiveButtonText),
    ));

    if (negativeButtonText != null && onNegativePressed != null) {
      actions.add(TextButton(
        onPressed: onNegativePressed!,
        child: Text(negativeButtonText!),
      ));
    }

    return actions;
  }
}

void showAlertWithChoice({
  required BuildContext context,
  required String content,
  VoidCallback? onPositivePressed,
  VoidCallback? onNegativePressed,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ReusableAlertDialog(
        title: "Confirmation",
        content: content,
        positiveButtonText: "Yes",
        negativeButtonText: "No",
        onPositivePressed: () {
          if (onPositivePressed != null) {
            onPositivePressed();
          }
          Navigator.of(context).pop();
        },
        onNegativePressed: () {
          if (onNegativePressed != null) {
            onNegativePressed();
          }
          Navigator.of(context).pop();
        },
      );
    },
  );
}

void showAlertWithOkButton({
  required BuildContext context,
  required String content,
  VoidCallback? onPositivePressed,
  VoidCallback? onNegativePressed,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ReusableAlertDialog(
        title: "Alert",
        content: content,
        positiveButtonText: "OK",
        onPositivePressed: () {
          if (onPositivePressed != null) {
            onPositivePressed();
          }
          Navigator.of(context).pop();
        },
      );
    },
  );
}
