import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app-text-styles.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Have an account? ',
            style: TextStyles.semiBold13.copyWith(color: AppColors.textDark),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
            text: ' Sign In',
            style: TextStyles.semiBold13.copyWith(color: AppColors.accent),
          ),
        ],
      ),
    );
  }
}
