import 'package:flutter/material.dart';
import 'package:nuzul/Core/widgets/app-custom-app-bar.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/sign-up-body-widget.dart';

class SignUpView extends StatelessWidget {
  static const String routename = 'signup';
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context, title: 'Sign Up'),
      body: SignUpBody(),
    );
  }
}
