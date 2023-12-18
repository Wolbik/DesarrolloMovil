import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:proyecto_chat/config/helper/request.dart';

import '../entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final request = Request();

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

    if(text.endsWith('?')){
      //llamado API
      getYourAnswer();
    }

    notifyListeners();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      moveScrollBottom();
    });
  }

  void moveScrollBottom(){
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  Future<void> getYourAnswer() async {
    final yourAnswer = await request.getAnswer();
    messageList.add(yourAnswer);
    notifyListeners();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      moveScrollBottom();
    });
  }

}