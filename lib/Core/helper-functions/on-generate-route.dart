import 'package:flutter/material.dart';
import 'package:nuzul/Feature/Login/presentation/views/login-view.dart';
import 'package:nuzul/Feature/onBoarding/presentation/views/on-boarding-view.dart';
import 'package:nuzul/Feature/splach/presentation/views/splach_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplachView.routename:
      return MaterialPageRoute(builder: (context) => SplachView());
    case OnBoardingView.routename:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    case LoginView.routename:
      return MaterialPageRoute(builder: (context) => LoginView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
