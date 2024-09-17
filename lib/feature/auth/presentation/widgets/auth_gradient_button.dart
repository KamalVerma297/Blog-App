import 'package:blog_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String buttontext;
  final Function() onTap;
  
  const AuthGradientButton({
    super.key,
    required this.buttontext,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height * 0.07,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.gradient1,
              AppColors.gradient2,
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          buttontext,
          style: const TextStyle(fontSize: 22.0),
        ),
      ),
    );
  }
}
