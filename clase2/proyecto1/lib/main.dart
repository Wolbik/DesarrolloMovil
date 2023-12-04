import 'package:flutter/material.dart';
import 'home.dart';
import 'social_food_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: SocialFoodTheme.darkTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}


