import 'package:flutter/material.dart';

import '../../../entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    //Copia el esquema de colores definido en el padre
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(
                color: colors.secondary,
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
        ),
        ImageBubble(imageNetwork: message.imageURL),
      ],
    );
  }
}

class ImageBubble extends StatelessWidget {
  const ImageBubble({super.key, this.imageNetwork});

  final String? imageNetwork;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        imageNetwork!,
        width: size.width * 0.70,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress==null){
            return child;
          }
          else{
            return Container(
              width: size.width * 0.70,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text('Writing a Message'),
              ),
            );
          }
        },
      ),
    );
  }
}

