import 'package:flutter/material.dart';
import 'package:yes_no_2/presentation/widgets/her_message_bubble.dart';

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
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJqK4aI63xCc5gT82EqCdEKJhaDENfPdHMcHr63hBXh62Fi5EPgRBXJguBgJyBu1RpYFI&usqp=CAU'),
          ),
        ),
        title: const Text("Mi amor"),
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? MyMessageBubble()
                      : HerMessageBubble();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
