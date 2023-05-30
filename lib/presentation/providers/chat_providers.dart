import 'package:flutter/material.dart';
import 'package:yes_no_2/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetyesnoAnsewer getyesnoAnsewer = GetyesnoAnsewer();

  List<Message> messageList = [
    
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty == true) return;
    final newMessage = Message(text: text, fromwho: FromWho.mine);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      herReply();
    }

    notifyListeners();
    moveScrollController();
  }

  Future<void> herReply() async {
    final herMessage = await getyesnoAnsewer.getYesNo();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollController();
  }

  Future<void> moveScrollController() async {
    await Future.delayed(Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut);
  }
}
