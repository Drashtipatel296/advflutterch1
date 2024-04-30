import 'package:advflutterch1/screens/change_theme_using_provider/provider/counter_provider.dart';
import 'package:advflutterch1/screens/change_theme_using_provider/provider/theme_provider.dart';
import 'package:advflutterch1/screens/stepper/view/horizontal_stepper.dart';
import 'package:advflutterch1/screens/stepper/view/stepper_screen.dart';
import 'package:advflutterch1/screens/theme_change/view/screen/home_screen.dart';
import 'package:advflutterch1/screens/change_theme_using_provider/view/counter_screen.dart';
import 'package:advflutterch1/utils/global_var.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/change_theme_using_provider/view/change_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeChangeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: Provider.of<ThemeChangeProvider>(context, listen: true).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/theme',
      routes: {
        // '/' : (context) =>  HomePage(),
        // '/stepper' : (context) =>  StepperApp(),
        // '/horizontal' : (context) => HorizontalStepper(),
        // '/counter': (context) => const CounterApp(),
        '/theme': (context) => const ThemeProvider(),
      },
    );
  }
}
