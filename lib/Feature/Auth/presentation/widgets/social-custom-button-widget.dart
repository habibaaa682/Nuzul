import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nuzul/Core/utiles/app-text-styles.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';

class SocialCustomButton extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onPressed;

  const SocialCustomButton({
    super.key,
    required this.image,
    required this.title,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColors.background,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: BorderSide(color: AppColors.background, width: 1.0),
        ),
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 12,
            child: SvgPicture.asset(image, width: 20, height: 20),
          ),

          Center(
            child: Text(
              title,
              style: TextStyles.semiBold16.copyWith(color: AppColors.textDark),
            ),
          ),
        ],
      ),
    );
  }
}
