import 'package:flutter/material.dart';
import 'package:nuzul/Feature/onBoarding/presentation/widgets/on-boarding-view-body.dart';

class OnBoardingView extends StatelessWidget {
  static const String routename = 'onBoarding';
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingViewBody());
  }
}
