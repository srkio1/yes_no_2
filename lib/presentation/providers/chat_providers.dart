import 'package:flutter/material.dart';
import 'package:yes_no_2/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(
        message: "Aqui tiene que venir algun mensaje", fromwho: FromWho.mine),
    Message(message: "aqui algun otro mensaje ?", fromwho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    //TODO cosas por hacer
  }
}