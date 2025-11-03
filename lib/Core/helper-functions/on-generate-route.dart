import 'package:flutter/material.dart';
import 'package:nuzul/Feature/splach/presentation/views/splach_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch(settings.name)
  {
    case SplachView.routename:
      return MaterialPageRoute(builder: (context) =>  SplachView());
    default:
      return MaterialPageRoute(builder: (context)=> const Scaffold());
  }
}