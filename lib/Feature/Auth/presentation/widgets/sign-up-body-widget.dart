import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuzul/Core/widgets/app-custom-button.dart';
import 'package:nuzul/Core/widgets/app-custom-text-field.dart';
import 'package:nuzul/Feature/Auth/presentation/cubits/signup-cubits/signup_cubit.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/have-anaccount-widget.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/terms-and-condtions.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String firstName, lastName, userName, password, email, phoneNumber;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                CustomTextFormField(
                  hintText: 'First Name',
                  keyboardType: TextInputType.name,
                  onSaved: (value) {
                    firstName = value!;
                  },
                ),
                SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'Last Name',
                  keyboardType: TextInputType.name,
                  onSaved: (value) {
                    lastName = value!;
                  },
                ),
                SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'User Name',
                  keyboardType: TextInputType.name,
                  onSaved: (value) {
                    userName = value!;
                  },
                ),
                SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) {
                    email = value!;
                  },
                ),
                SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'Phone Number',
                  keyboardType: TextInputType.phone,
                  onSaved: (value) {
                    phoneNumber = value!;
                  },
                ),
                SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  onSaved: (value) {
                    password = value!;
                  },
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
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context.read<SignupCubit>().signUp(
                        firstName,
                        lastName,
                        userName,
                        phoneNumber,
                        email,
                        password,
                        1,
                      );
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
                SizedBox(height: 33),
                HaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
