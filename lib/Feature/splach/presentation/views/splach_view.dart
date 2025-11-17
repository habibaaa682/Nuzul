import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuzul/Core/services/shared-prefrences-singleton.dart';
import 'package:nuzul/Feature/Login/presentation/views/login-view.dart';
import 'package:nuzul/Feature/onBoarding/presentation/views/on-boarding-view.dart';
import 'package:nuzul/Feature/splach/presentation/widgets/splash-view-body.dart';
import 'package:nuzul/constants.dart';

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
    bool kIsOnBoardingViewSeen = SharedPreferencesSingleton.getBool(
      isOnBoardingViewSeen,
    );

    Future.delayed(const Duration(seconds: 1), () {
      if (kIsOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routename);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routename);
      }
    });
  }
}
