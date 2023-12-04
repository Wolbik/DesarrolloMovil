import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _boxCover(context),
          Column(
            children: [
              _imageCover(),
              _textAppName(),
            ],
          )
        ],
      ),
    );
  }

  //Metodo para cargar la imagen
  Widget _imageCover(){
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30, bottom: 15),
          child: Image.asset(
            'assets/images/intec.jpeg',
            height: 140,
          )
      ),
    );
  }

  //Metodo con el texto principal
  Widget _textAppName(){
    return Text(
      'Delivery App',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  //Metodo con un cover de background
Widget _boxCover(BuildContext context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      color: Colors.red,
    );
}


}