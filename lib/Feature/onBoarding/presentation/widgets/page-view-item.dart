import 'package:flutter/material.dart';
import 'package:nuzul/Core/services/shared-prefrences-singleton.dart';
import 'package:nuzul/Core/utiles/app-text-styles.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';
import 'package:nuzul/Feature/Login/views/login-view.dart';
import 'package:nuzul/constants.dart';

class PageViewItem extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final bool isVisible;
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.isVisible,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.8,
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                title,
                style: TextStyles.bold23.copyWith(color: AppColors.textDark),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.015),
              Text(
                subTitle,
                style: TextStyles.semiBold13.copyWith(color: AppColors.accent),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        Visibility(
          visible: isVisible,
          child: Positioned(
            top: size.height * 0.05,
            right: size.width * 0.05,
            child: GestureDetector(
              onTap: () {
                SharedPreferencesSingleton.setBool(isOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routename);
              },
              child: Text(
                'Skip',
                style: TextStyles.semiBold13.copyWith(color: AppColors.accent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
