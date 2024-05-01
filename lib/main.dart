import 'package:advflutterch1/screens/change_theme_using_provider/provider/counter_provider.dart';
import 'package:advflutterch1/screens/change_theme_using_provider/provider/theme_provider.dart';
import 'package:advflutterch1/screens/one_time_intro_screen/provider/intro_provider.dart';
import 'package:advflutterch1/screens/one_time_intro_screen/view/intro1.dart';
import 'package:advflutterch1/screens/one_time_intro_screen/view/intro2.dart';
import 'package:advflutterch1/screens/one_time_intro_screen/view/intro3.dart';
import 'package:advflutterch1/screens/theme_change/view/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        ChangeNotifierProvider(
          create: (context) => IntroProvider(),
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
      home: Provider.of<IntroProvider>(context, listen: true).isClicked ? const HomePage() : const IntroScreen1(),
      themeMode: Provider.of<ThemeChangeProvider>(context, listen: true).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      //initialRoute: '/intro1',
      routes: {
        // '/' : (context) =>  HomePage(),
        // '/stepper' : (context) =>  StepperApp(),
        // '/horizontal' : (context) => HorizontalStepper(),
        // '/counter': (context) => const CounterApp(),
        // '/theme': (context) => const ThemeProvider(),
        '/intro1': (context) => const IntroScreen1(),
        '/intro2': (context) => const IntroScreen2(),
        '/intro3': (context) => const IntroScreen3(),
        '/home' : (context) => const HomePage(),
      },
    );
  }
}
