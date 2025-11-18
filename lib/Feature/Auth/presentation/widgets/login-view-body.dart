import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app_images.dart';
import 'package:nuzul/Core/widgets/app-custom-button.dart';
import 'package:nuzul/Core/widgets/app-custom-text-field.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/dont-have-account-widget.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/forgot-password-widget.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/or-divider-widget.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/social-custom-button-widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: Color(0xffC9CECF),
                ),
              ),
              SizedBox(height: 16),
              ForgotPasswordWidget(),
              SizedBox(height: 33),
              CustomButton(text: 'Login', onPressed: () {}),
              SizedBox(height: 33),
              DontHaveAnAccountWidget(),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 24),
              SocialCustomButton(
                image: Assets.assetsImagesGoogleIconLogoSvgrepoCom,
                title: 'Login With Google',
                onPressed: () {},
              ),
              SizedBox(height: 24),
              SocialCustomButton(
                image: Assets.assetsImagesAppleBlackLogoSvgrepoCom,
                title: 'Login With Apple',
                onPressed: () {},
              ),
              SizedBox(height: 24),
              SocialCustomButton(
                image: Assets.assetsImagesFacebook3LogoSvgrepoCom,
                title: 'Login With Facebook',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
