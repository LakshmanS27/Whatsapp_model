import 'package:flutter/material.dart';

import '../main.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final List<Chat> chatData = [
      Chat(
        name: "John Doe",
        lastMessage: "Hey there!",
        color: Colors.blue,
      ),
      Chat(
        name: "Alice Smith",
        lastMessage: "How are you?",
        color: Colors.red,
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatData.length,
              itemBuilder: (context, index) {
                final chat = chatData[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: chat.color,
                    child: Text(chat.name[0]),
                  ),
                  title: Text(chat.name),
                  subtitle: Text(chat.lastMessage),
                  onTap: () {
                    // Handle chat item tap here
                  },
                );
              },
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the message button tap
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.message),
      ),
    );
  }
}