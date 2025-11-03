import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuzul/Feature/splach/presentation/widgets/splash-view-body.dart';

class SplachView extends StatelessWidget{
  const SplachView({super.key});
  static const routename = "splach";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplachViewBody(),
    );
  }
  
}