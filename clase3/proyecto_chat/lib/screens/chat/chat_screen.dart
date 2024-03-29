import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_chat/providers/chat_provider.dart';
import 'package:proyecto_chat/screens/widgets/chat/her_message_bubble.dart';
import 'package:proyecto_chat/screens/widgets/chat/my_message_bubble.dart';
import 'package:proyecto_chat/screens/widgets/share/message_fieldbox.dart';

import '../../entities/message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://static.tvtropes.org/pmwiki/pub/images/protag.png'),
          ),
        ),
        centerTitle: true,
        title: Text('Mi chat'),
      ),
      body: ChatView()
    );
  }
}


class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {

    //crear un objeto de tipo Provider
    final chatProvider = context.watch<ChatProvider>();


    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.scrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder:(context, index) {
                  final message = chatProvider.messageList[index];
                  return message.fromWho == FromWho.me ? MyMessageBubble(message: message) : HerMessageBubble(message: message);
                  //return index % 2 == 0 ? HerMessageBubble() : MyMessageBubble();
                },
              )
            ),
            MessageFieldBox(
              onvalue: (String value){
                chatProvider.sendMessage(value);
                chatProvider.moveScrollBottom();
              },
            ),
          ],
        ),
      ),
    );
  }
}
