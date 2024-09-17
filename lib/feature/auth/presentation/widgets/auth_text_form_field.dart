import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final bool isObsecureText;
  final bool isEnabled;

  const AuthTextField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    this.isObsecureText = false,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      obscureText: isObsecureText,
      enabled: isEnabled,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText can\'t be empty';
        }
        return null;
      },
    );
  }
}
