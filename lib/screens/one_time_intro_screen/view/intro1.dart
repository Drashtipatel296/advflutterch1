import 'package:flutter/material.dart';
import 'package:advflutterch1/screens/one_time_intro_screen/view/componets/skip_text.dart';
import 'package:advflutterch1/screens/one_time_intro_screen/view/componets/next_screen.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFA),
      body: Column(
        children: [
          SkipText(),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/intro1.png'),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Fresh Food',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 0.5),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              textAlign: TextAlign.center,
              "Lorem Ipsum is simply dummy text of the typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 117,
          ),
          NextScreen(),
        ],
      ),
    );
  }
}
