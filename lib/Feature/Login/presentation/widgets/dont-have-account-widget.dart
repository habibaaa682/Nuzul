import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app-text-styles.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyles.semiBold13.copyWith(color: AppColors.textDark),
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.semiBold13.copyWith(color: AppColors.accent),
          ),
        ],
      ),
    );
  }
}
