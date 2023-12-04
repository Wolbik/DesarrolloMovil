import 'package:flutter/material.dart';
import 'package:proyecto_chat/screens/chat/chat_screen.dart';

import 'config/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      title: 'Material App',
      home: ChatScreen()
    );
  }
}
