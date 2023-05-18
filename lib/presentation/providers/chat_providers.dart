import 'package:flutter/material.dart';
import 'package:yes_no_2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "Aqui tiene que venir algun mensaje", fromwho: FromWho.mine),
    Message(text: "aqui algun otro mensaje ?", fromwho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromwho: FromWho.mine);
    messageList.add(newMessage);

    notifyListeners();
  }
}
