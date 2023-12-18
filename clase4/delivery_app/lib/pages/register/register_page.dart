import 'package:delivery_app/pages/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //Crear objetivo de tipo LoginController
  registerController controller = Get.put(registerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _boxCover(context),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: controller.goToLoginPage,
                          child: Icon(Icons.arrow_back)
                      )
                    ],
                  ),
                  _textAppName(),
                  _boxForm(context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  //Metodo con el texto principal
  Widget _textAppName(){
    return Text(
      'Register Delivery App',
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
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      height: MediaQuery.of(context).size.height * 0.8,
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
          _imageAvatar(),
          SizedBox(
            height: 8,
          ),
          _textName(),
          SizedBox(
            height: 8,
          ),
          _textLastname(),
          SizedBox(
            height: 8,
          ),
          _textPhone(),
          SizedBox(
            height: 8,
          ),
          _textLogin(),
          SizedBox(
            height: 8,
          ),
          _textPassword(),
          SizedBox(
            height: 8,
          ),
          _textValidPassword(),
          SizedBox(
            height: 8,
          ),
          _buttomRegister(),
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

  //Campo de entrada de nombre
  Widget _textName(){
    return TextField(
      controller: controller.nameController,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "nombre",
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  //Campo de entrada de nombre
  Widget _textLastname(){
    return TextField(
      controller: controller.lastnameController,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "apellido",
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  //Campo de entrada de telefono
  Widget _textPhone(){
    return TextField(
      controller: controller.phoneController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: "000-000-0000",
        prefixIcon: Icon(Icons.phone_android),
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

  //Campo de entrada de validacion de contraseña
  Widget _textValidPassword(){
    return TextField(
      controller: controller.validpasswordController,
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "misma contraseña",
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

  Widget _buttomRegister(){
    return Container(
      margin: EdgeInsets.only(top: 18),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15)
        ),
        onPressed: controller.register,
        child: Text('REGISTER'),
      ),
    );
  }

  //Metodo para la imagen del avatar
  Widget _imageAvatar() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 30, bottom: 10),
      child: GestureDetector(
        child: CircleAvatar(
          radius: 70,
          backgroundColor: Colors.red, // Puedes ajustar el color de fondo según tus necesidades
          child: Icon(
            Icons.person,
            size: 50,
            color: Colors.white,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}

