import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:nuzul/Core/services/shared-prefrences-singleton.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';
import 'package:nuzul/Core/widgets/app-custom-button.dart';
import 'package:nuzul/Feature/Login/views/login-view.dart';
import 'package:nuzul/Feature/onBoarding/presentation/widgets/on-boarding-page-view.dart';
import 'package:nuzul/constants.dart';

class OnBoardingViewBody extends StatefulWidget {
  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;
  var currentPage = 0;
  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: _pageController)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: currentPage == 1 ? AppColors.textDark : AppColors.beigeDark,
            activeColor: AppColors.textDark,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Visibility(
          visible: currentPage == 0,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomButton(
              text: 'Get Started',
              onPressed: () {
                SharedPreferencesSingleton.setBool(isOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routename);
              },
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
      ],
    );
  }
}
