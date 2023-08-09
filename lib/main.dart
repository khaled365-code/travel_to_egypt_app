import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ourprojectiti/create_account_screen.dart';
import 'package:ourprojectiti/login_cubit/eye_cubit.dart';
import 'package:ourprojectiti/signup_cubit/signup_cubit.dart';
import 'package:ourprojectiti/splash_screen.dart';

import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EyeCubit>(create: (context) => EyeCubit()),
        BlocProvider<SignupCubit>(create: (context) => SignupCubit()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash()
      ),
    );
  }
}


