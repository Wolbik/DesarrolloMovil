import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {


  final ValueChanged<String> onvalue;

  final textController = TextEditingController();
  final focusNode = FocusNode();

  final outlineInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
      borderRadius: BorderRadius.circular(40)
  );


  MessageFieldBox({super.key, required this.onvalue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
        hintText: 'Digita tu mensaje terminado con un ?',
        enabledBorder: outlineInputBorder,
        filled: true,
        focusedBorder: outlineInputBorder,
        suffixIcon: IconButton(
            onPressed: (){
              final textValue = textController.value.text;
              print('Send Value = $textValue');
              textController.clear();
              focusNode.requestFocus();
              onvalue(textValue);
            },
            icon: Icon(Icons.send_outlined),
        )
      ),
      onFieldSubmitted: (value){
        print('Submitted $value');
        textController.clear();
        focusNode.requestFocus();
        onvalue(value);
      },
    );
  }
}
