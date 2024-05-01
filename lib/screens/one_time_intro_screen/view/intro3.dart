import 'package:flutter/material.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFA),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/intro1.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Easy Payment',
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
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            child: Container(
              height: 55,
              width: 230,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
