import 'package:flutter/material.dart';
import 'package:nuzul/Core/widgets/app-custom-button.dart';
import 'package:nuzul/Core/widgets/app-custom-text-field.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/have-anaccount-widget.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/terms-and-condtions.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'User Name',
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: Color(0xffC9CECF),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [TermsAndCondtions()],
              ),
              SizedBox(height: 33),
              CustomButton(text: 'Sign Up', onPressed: () {}),
              SizedBox(height: 33),
              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
