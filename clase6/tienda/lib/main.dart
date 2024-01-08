import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tienda_app/views/buyers/main_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ? await Firebase.initializeApp(
    options:FirebaseOptions(
        apiKey: 'AIzaSyCYwptVlBN83J-Y6hPBvUHharZ4a7Rk_wY',
        appId: '1:147187461072:android:bce67c58153b38d63d67d5',
        messagingSenderId: '147187461072',
        projectId: 'multi-store-app-01',
        storageBucket: 'gs://multi-store-app-01.appspot.com'
    )
  ) : Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
          fontFamily: 'Brand-Bold'
      ),
      home: MainScreen(),
    );
  }
}