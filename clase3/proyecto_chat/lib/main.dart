import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_chat/providers/chat_provider.dart';
import 'package:proyecto_chat/screens/chat/chat_screen.dart';

import 'config/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ChatProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 5).theme(),
        title: 'Material App',
        home: ChatScreen()
      ),
    );
  }
}
