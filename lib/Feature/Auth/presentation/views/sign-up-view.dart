import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuzul/Core/services/get_it-service.dart';
import 'package:nuzul/Core/widgets/app-custom-app-bar.dart';
import 'package:nuzul/Feature/Auth/domain/repos/auth-repo.dart';
import 'package:nuzul/Feature/Auth/presentation/cubits/signup-cubits/signup_cubit.dart';
import 'package:nuzul/Feature/Auth/presentation/widgets/signup-consumer.dart';

class SignUpView extends StatelessWidget {
  static const String routename = 'signup';
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: BuildAppBar(context, title: 'Sign Up'),
        body: SignUpViewBlocConsumer(),
      ),
    );
  }
}
