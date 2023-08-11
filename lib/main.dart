import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ourprojectiti/create_account_screen.dart';
import 'package:ourprojectiti/email_verifivcation_screen.dart';
import 'package:ourprojectiti/login_cubit/eye_cubit.dart';
import 'package:ourprojectiti/reset_password_screen.dart';
import 'package:ourprojectiti/signup_cubit/signup_cubit.dart';
import 'package:ourprojectiti/splash_screen.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';
import 'model/weather_provider.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider
    (
      create: (context){
        return WeatherProvider();
      },

      child:const MyApp()));
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
          theme:ThemeData(
            primarySwatch: Provider.of<WeatherProvider>(context).weatherData==null?Colors.blue:Provider.of<WeatherProvider>(context).weatherData!.getThemeColor(),
          ) ,
          debugShowCheckedModeBanner: false,
          home: Splash()
      ),
    );
  }
}


