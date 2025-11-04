import 'package:flutter/material.dart';
import 'package:nuzul/Feature/onBoarding/presentation/widgets/on-boarding-page-view.dart';

class OnBoardingViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [Expanded(child: OnBoardingPageView())]);
  }
}
