import 'package:flutter/material.dart';
import 'package:nuzul/Core/utiles/app-text-styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(thickness: 1, color: Colors.grey)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(
            'OR',
            style: TextStyles.bold13.copyWith(color: Colors.grey),
          ),
        ),
        const Expanded(child: Divider(thickness: 1, color: Colors.grey)),
      ],
    );
  }
}
