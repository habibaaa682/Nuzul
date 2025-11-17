import 'package:flutter/material.dart';
import 'package:nuzul/Core/widgets/app-custom-text-field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.visibility_off, color: Color(0xffC9CECF)),
            ),
          ],
        ),
      ),
    );
  }
}
