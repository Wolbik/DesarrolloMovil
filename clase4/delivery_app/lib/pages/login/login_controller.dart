import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //Metodo para movernos a pagina de registro
  void goToRegisterPage(){
    Get.toNamed('register');
  }

  //Metodo para validar la validacion del formulario
  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if(validForm(email, password)){
      print('Formulario Listo para la peticion http');
    }
  }

  bool validForm(String email, String password){
    if(!GetUtils.isEmail(email)){
      Get.snackbar('Formulario Invalido.', 'Debes ingresar un email valido.');
      return false;
    }
    if(email.isEmpty){
      Get.snackbar('Formulario Invalido.', 'Debes ingresar un email.');
      return false;
    }
    if(password.isEmpty){
      Get.snackbar('Formulario Invalido.', 'Debes ingresar una contraseña.');
      return false;
    }
    return true;
  }

}