import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

void buildShowSnacbar({
  required BuildContext context,
  required String content,
  required String title,
  required ContentType contentType,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Theme.of(context).colorScheme.background,
    margin: const EdgeInsets.all(0),
    content: AwesomeSnackbarContent(
      title:title,
      message: content,
      contentType: contentType,
    ),
  ));
}
