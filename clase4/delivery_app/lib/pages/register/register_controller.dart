import 'package:flutter/material.dart';
import 'package:get/get.dart';

class registerController extends GetxController{


  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController validpasswordController = TextEditingController();

  //Metodo para movernos a pagina de registro
  void goToLoginPage(){
    Get.toNamed('login');
  }

  //Metodo para validar la validacion del formulario
  void register(){
    String name = nameController.text.trim();
    String lastname = lastnameController.text.trim();
    String phone = phoneController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String validpass = validpasswordController.text.trim();

    if(validForm(name, lastname, phone, email, password, validpass)){
      print('Formulario Listo para la peticion http');
    }
  }

  bool validForm(String name, String lastname, String phone, String email, String password, String validpass,) {
    if (name.isEmpty){
      Get.snackbar('Formulario Invalido.', 'Debe ingresar un nombre.');
      return false;
    }
    if (lastname.isEmpty){
      Get.snackbar('Formulario Invalido.', 'Debe ingresar un apellido.');
      return false;
    }
    if (phone.isEmpty){
      Get.snackbar('Formulario Invalido.', 'Debe ingresar un telefono.');
      return false;
    }
    if (email.isEmpty){
      Get.snackbar('Formulario Invalido.', 'Debe ingresar un email.');
      return false;
    }
    if (password.isEmpty){
      Get.snackbar('Formulario Invalido.', 'Debe ingresar una contraseña.');
      return false;
    }
    if (validpass.isEmpty){
      Get.snackbar('Formulario Invalido.', 'Debe confirmar su contraseña.');
      return false;
    }

    if (!GetUtils.isEmail(email)){
      Get.snackbar('Formulario Invalido.', 'Debes ingresar un email válido.');
      return false;
    }

    if (phone.length != 10 || !GetUtils.isNum(phone)){
      Get.snackbar('Formulario Invalido.', 'Debes ingresar un número de teléfono válido.');
      return false;
    }

    if (password != validpass){
      Get.snackbar('Formulario Invalido.', 'Las contraseñas no coinciden.');
      return false;
    }
    return true;
  }

}