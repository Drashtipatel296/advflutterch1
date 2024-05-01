import 'package:flutter/material.dart';

class SkipText extends StatelessWidget {
  const SkipText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: 55, horizontal: 10),
          child: Text(
            'Skip',
            style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}