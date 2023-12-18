import 'package:flutter/material.dart';

import '../entities/message.dart';

class ChatProvider extends ChangeNotifier{

  //crear un controlador para el ListView
  final  scrollController= ScrollController();


  List<Message> messageList = [
    Message(text: 'Hola Mundo', fromWho: FromWho.me),
    Message(text: 'Hola Mundo', fromWho: FromWho.me),
  ];


  //Metodo para añadir mensajes a la lista
  Future<void> sendMessage(String text) async{
    if(text.isEmpty)
      return;
    final message = Message(text: text, fromWho: FromWho.me);
    messageList.add(message);

    notifyListeners();
  }

  void moveScrollBottom(){
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

}