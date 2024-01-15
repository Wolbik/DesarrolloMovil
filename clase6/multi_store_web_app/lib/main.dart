import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:multi_store_web_app/views/main_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: kIsWeb || Platform.isAndroid ? FirebaseOptions(
      apiKey: 'AIzaSyCIvjSHkSrVHLHSovc9TZwzxaQ9_heSP_Q',
      appId: "1:147187461072:web:f96ccfde80cb55253d67d5",
      storageBucket: "multi-store-app-01.appspot.com",
      messagingSenderId: "147187461072",
      projectId: "multi-store-app-01",
    ) : null
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: MainScreen(),
    );
  }
}