import 'package:flutter/material.dart';
import 'package:nuzul/Core/helper-functions/on-generate-route.dart';
import 'package:nuzul/Core/services/shared-prefrences-singleton.dart';
import 'Feature/splach/presentation/views/splach_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSingleton.init();
  runApp(const Nuzul());
}

class Nuzul extends StatelessWidget {
  const Nuzul({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplachView.routename,
      debugShowCheckedModeBanner: false,
    );
  }
}
