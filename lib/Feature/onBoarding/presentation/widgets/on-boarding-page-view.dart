import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app_images.dart';
import 'package:nuzul/Feature/onBoarding/presentation/widgets/page-view-item.dart';

class OnBoardingPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [PageViewItem(image: Assets.assetsImagesWelcome, title: '')],
    );
  }
}
