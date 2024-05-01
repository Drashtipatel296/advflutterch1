import 'package:advflutterch1/screens/one_time_intro_screen/view/componets/next_screen2.dart';
import 'package:advflutterch1/screens/one_time_intro_screen/view/componets/skip_text.dart';
import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFA),
      body: Column(
        children: [
          const SkipText(),
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/intro2.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Fast Delivery',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 0.5),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              textAlign: TextAlign.center,
              "Lorem Ipsum is simply dummy text of the typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 117,
          ),
          const NextScreen2(),
        ],
      ),
    );
  }
}
