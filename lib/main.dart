import 'package:advflutterch1/screens/stepper/view/horizontal_stepper.dart';
import 'package:advflutterch1/screens/stepper/view/stepper_screen.dart';
import 'package:advflutterch1/screens/theme_change/view/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/horizontal',
      routes: {
        '/' : (context) => const HomePage(),
        '/stepper' : (context) => const StepperApp(),
        '/horizontal' : (context) => const HorizontalStepper(),
      },
    );
  }
}
