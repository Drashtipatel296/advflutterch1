import 'package:advflutterch1/screens/theme_change/view/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const ThemeApp());
}

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomePage(),
      },
    );
  }
}
