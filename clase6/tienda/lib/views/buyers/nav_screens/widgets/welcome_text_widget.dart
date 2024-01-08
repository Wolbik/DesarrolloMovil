import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'What are you looking for? 👀',
      style: TextStyle(
        fontSize: 22,
      ),
    );
  }
}