import 'package:delivery_app/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Delivery App',
      theme: ThemeData.light().copyWith(
          colorScheme:ColorScheme.fromSwatch(
            brightness: Brightness.light,
            primarySwatch: Colors.red,
            accentColor: Colors.redAccent
          ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage(),)
      ],
    );
  }
}
