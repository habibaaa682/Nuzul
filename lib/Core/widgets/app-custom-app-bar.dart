import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app-text-styles.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';

AppBar BuildAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.arrow_forward_ios, color: AppColors.textDark),
        ),
      ),
    ],
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.bold19.copyWith(color: AppColors.textDark),
    ),
  );
}
