import 'package:flutter/material.dart';
import 'package:nuzul/Core/widgets/app-custom-text-field.dart';

class CustomPasswordField extends StatefulWidget {
  final void Function(String?)? onSaved;

  CustomPasswordField({super.key, this.onSaved});

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      hintText: 'Password',
      keyboardType: TextInputType.visiblePassword,
      onSaved: (value) {
        widget.onSaved?.call(value);
      },
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? Icon(Icons.visibility, color: Color(0xffC9CECF))
            : Icon(Icons.visibility_off, color: Color(0xffC9CECF)),
      ),
    );
  }
}
