import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(myCard());

class myCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}



