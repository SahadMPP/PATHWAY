import 'package:flutter/material.dart';

void buildShowSnacbar(BuildContext context, String content, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      content,
    ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
    margin: const EdgeInsets.all(10),
  ));
}
