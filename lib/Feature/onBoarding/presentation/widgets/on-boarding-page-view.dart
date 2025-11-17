import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app_images.dart';
import 'package:nuzul/Feature/onBoarding/presentation/widgets/page-view-item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) !=
              0,
          image: Assets.assetsImagesWelcome,
          title: 'Weclcome to Nuzul',
          subTitle: 'Your Complete Hotel Management Solution',
        ),
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) !=
              0,
          image: Assets.assetsImagesNuzul,
          title: 'Manage Bookings, Rooms & Staff',
          subTitle:
              'Keep track of all room availability, bookings, and guest information in real-time, while assigning staff, managing tasks, and tracking service quality to ensure the best experience for your guests.',
        ),
      ],
    );
  }
}
