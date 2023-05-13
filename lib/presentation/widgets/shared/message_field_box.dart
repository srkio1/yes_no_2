import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );
    final inputdecoration = InputDecoration(
      hintText: "Introduce tu mensaje?",
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(
          Icons.send_and_archive_outlined,
        ),
        onPressed: () {
          //para obtener el valor de la caja de texto
          final textValue = textController.value.text;
          print("este es el valor de la caja de texto $textValue");
        },
      ),
    );
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      decoration: inputdecoration,
      controller: textController,
      onFieldSubmitted: (value) {
        textController.clear();
        //para conservar el focus en el campo
        focusNode.requestFocus();
      },
    );
  }
}
