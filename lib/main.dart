import 'package:flutter/material.dart';
import 'package:whatsapp/screens/whats_app_home.dart';


void main() => runApp(const WhatsAppCloneApp());

class WhatsAppCloneApp extends StatelessWidget {
  const WhatsAppCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WhatsAppHome(),
    );
  }
}

class Chat {
  final String name;
  final String lastMessage;
  final Color color;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.color,
  });
}

class Status {
  final String username;
  final String timestamp;
  final Color color;
  final bool isMyStatus;

  Status({
    required this.username,
    required this.timestamp,
    required this.color,
    this.isMyStatus = false,
  });
}

class CallHistoryEntry {
  final String name;
  final String timestamp;
  final Color color;

  CallHistoryEntry({
    required this.name,
    required this.timestamp,
    required this.color,
  });
}
