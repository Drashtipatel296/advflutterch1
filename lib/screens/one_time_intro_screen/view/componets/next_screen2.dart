import 'package:advflutterch1/screens/one_time_intro_screen/provider/intro_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NextScreen2 extends StatelessWidget {
  const NextScreen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const SizedBox(width: 15,),
          Container(
            height: 8,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1, color: Colors.blue),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 8,
            width: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 8,
            width: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              Provider.of<IntroProvider>(context, listen: false).click();
              Navigator.of(context).pushNamed('/intro3');
            },
            child: const Text(
              'Next  ->',
              style: TextStyle(fontSize: 25, color: Color(0xff5EA0C8),),
            ),
          ),
        ],
      ),
    );
  }
}