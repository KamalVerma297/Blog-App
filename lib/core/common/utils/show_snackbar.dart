import 'package:flutter/material.dart';

void showSnackBar(String text, BuildContext context) {
  ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(
    SnackBar(
      content: Text(text),
      showCloseIcon: true,
    ),
  );
}
