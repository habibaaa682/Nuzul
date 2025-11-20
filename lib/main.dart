import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nuzul/Core/helper-functions/on-generate-route.dart';
import 'package:nuzul/Core/services/custom-bloc-observer.dart';
import 'package:nuzul/Core/services/get_it-service.dart';
import 'package:nuzul/Core/services/shared-prefrences-singleton.dart';
import 'package:nuzul/Core/utiles/app_colors.dart';
import 'Feature/splach/presentation/views/splach_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSingleton.init();
  setupGetIt();
  Bloc.observer = CustomBlocObserver();
  runApp(const Nuzul());
}

class Nuzul extends StatelessWidget {
  const Nuzul({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.beige),
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplachView.routename,
      debugShowCheckedModeBanner: false,
    );
  }
}
