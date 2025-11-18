import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app-text-styles.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/custom-checkbox.dart';

class TermsAndCondtions extends StatefulWidget {
  const TermsAndCondtions({super.key});

  @override
  State<TermsAndCondtions> createState() => _TermsAndCondtionsState();
}

class _TermsAndCondtionsState extends State<TermsAndCondtions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCheckBox(
          onChanged: (value) {
            isTermsAccepted = value;
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        SizedBox(width: 16),
        Text(
          'By signing up, you agree to our ',
          style: TextStyles.semiBold13.copyWith(color: Colors.grey),
        ),
        Text(
          'Terms & Conditions',
          style: TextStyles.semiBold13.copyWith(color: AppColors.textDark),
        ),
      ],
    );
  }
}
