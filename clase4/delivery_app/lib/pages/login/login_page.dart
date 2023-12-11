import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:delivery_app/pages/login/login_controller.dart';
import 'package:get/get.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //Crear objetivo de tipo LoginController
  loginController controller = Get.put(loginController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _boxCover(context),
          SingleChildScrollView(
            child: Column(
              children: [
                _imageAnimation(),
                _textAppName(),
                _boxForm(context),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
          height: 50,
          child: _textDontHaveAccount()
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

  //Formulario login
  Widget _boxForm(BuildContext context){
    return Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.03,
          left: 50,
          right: 50,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        height: MediaQuery.of(context).size.height * 0.45,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              offset: Offset(0, 0.75),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _textYourInfo(),
            SizedBox(
              height: 20,
            ),
            _textLogin(),
            SizedBox(
              height: 20,
            ),
            _textPassword(),
            SizedBox(
              height: 20,
            ),
            _buttomLogin(),
          ],
        ),
    );
  }

  Widget _textYourInfo(){
    return Text(
      'Text your info',
      textAlign: TextAlign.center,
    );
  }

  Widget _buttomLogin(){
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15)
        ),
        onPressed: controller.login,
        child: Text('LOGIN'),
      ),
    );
  }

  //Campo de entrada de email
  Widget _textLogin(){
    return TextField(
      controller: controller.emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "correo electronico",
        prefixIcon: Icon(Icons.email),
      ),
    );
  }

  //Campo de entrada de contraseña
  Widget _textPassword(){
    return TextField(
      controller: controller.passwordController,
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "contraseña",
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }

  //Metodo con un cover de background
  Widget _boxCover(BuildContext context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      color: Colors.red.withOpacity(0.9),
    );
  }

  //Metodo para la imagen animada
  Widget _imageAnimation(){
      return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 30, bottom: 10),
          child: Lottie.asset(
              'assets/json/login_animation.json',
            width: 250,
            height: 250,
          )
      );
  }

  Widget _textDontHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No tienes cuenta?'),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            return controller.goToRegisterPage();
          },
            child: Text(
              'Registrate',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            )
        ),
      ],
    );
  }
}