import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool>? onChanged;

  const CustomCheckBox({super.key, required this.isChecked, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged!(!isChecked);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 24,
        width: 24,
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.textDark : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isChecked ? AppColors.textDark : Color(0xffC9CECF),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Icon(Icons.check, size: 20, color: Colors.white),
      ),
    );
  }
}
