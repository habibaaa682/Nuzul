import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app-text-styles.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';

AppBar BuildAppBar(context, {required String title}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios_new, color: AppColors.accent),
    ),
    centerTitle: true,
    title: Text(
      'Login',
      textAlign: TextAlign.center,
      style: TextStyles.bold19.copyWith(color: AppColors.accent),
    ),
  );
}
