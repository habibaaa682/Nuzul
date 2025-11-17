import 'package:flutter/material.dart';
import 'package:nuzul/Core/widgets/app-custom-app-bar.dart';
import 'package:nuzul/Feature/Login/views/login-view-body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routename = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context, title: 'Login'),
      body: LoginViewBody(),
    );
  }
}
