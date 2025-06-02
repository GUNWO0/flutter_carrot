import 'package:flutter/material.dart';
import 'package:flutter_carrot/screens/chatting/components/chat_container.dart';

import '../../models/chat_message.dart';
import '../components/appbar_preferred_size.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
