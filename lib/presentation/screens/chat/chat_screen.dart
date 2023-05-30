import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_2/domain/entities/message.dart';
import 'package:yes_no_2/presentation/providers/chat_providers.dart';
import 'package:yes_no_2/presentation/widgets/her_message_bubble.dart';
import 'package:yes_no_2/presentation/widgets/shared/message_field_box.dart';

import '../../widgets/my_messange_bubble.dart';

class ChatScreen extends StatelessWidget {
  
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBTE_h3bMpHpr6XqeskDniTYD0UkaZ0wcuWA&usqp=CAU'),
          ),
        ),
        title: const Text("La Calaca 3000"),
      ),
      body: const Chatview(),
    );
  }
}

class Chatview extends StatelessWidget {
  const Chatview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromwho == FromWho.mine)
                      ? MyMessageBubble(
                          message: message,
                        )
                      : HerMessageBubble(message: message);
                },
              ),
            ),
            MessageFieldBox(
              onValue: (value) {
                chatProvider.sendMessage(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
