import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app-text-styles.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(
          color: AppColors.textDark.withOpacity(0.5),
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: BorderSide(color: AppColors.beige, width: 1.0),
    );
  }
}
