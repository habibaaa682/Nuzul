import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuzul/Feature/onBoarding/presentation/views/on-boarding-view.dart';
import 'package:nuzul/Feature/splach/presentation/widgets/splash-view-body.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});
  static const routename = "splach";

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    super.initState();
    navigateToOnBoarding();
  }

  Widget build(BuildContext context) {
    return Scaffold(body: SplachViewBody());
  }

  void navigateToOnBoarding() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routename);
    });
  }
}
