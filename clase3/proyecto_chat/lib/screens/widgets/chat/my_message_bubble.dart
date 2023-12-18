import 'package:flutter/material.dart';

import '../../../entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    //Copia el esquema de colores definido en el padre
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20.0)
          ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(message.text,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
