import 'package:flutter/material.dart';

class AppTheme{
  AppTheme({this.selectedColor = 01})
  :assert(selectedColor >= 0, 'Selected color must be positive');

  int selectedColor;

  //lsitas de colores
  List<Color> colorThemes =[
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.cyanAccent
  ];


  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorThemes[selectedColor],
    );
  }

}