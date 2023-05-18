import 'package:flutter/material.dart';
import 'package:yes_no_2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  List<Message> messageList = [
    Message(text: "Aqui tiene que venir algun mensaje", fromwho: FromWho.mine),
    Message(text: "aqui algun otro mensaje ?", fromwho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty == true) return;
    final newMessage = Message(text: text, fromwho: FromWho.mine);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollController();
  }

  void moveScrollController() {
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
