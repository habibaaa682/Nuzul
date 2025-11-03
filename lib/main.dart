import 'package:flutter/material.dart';
import 'package:nuzul/Core/helper-functions/on-generate-route.dart';
import 'Feature/splach/presentation/views/splach_view.dart';

void main() {
  runApp(const Nuzul());
}

class Nuzul extends StatelessWidget {
  const Nuzul({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: onGenerateRoute,
    initialRoute:SplachView.routename,);
  }
}