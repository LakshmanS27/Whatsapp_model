import 'package:flutter/material.dart';
import 'call_history_screen.dart'; // Import CallHistoryScreen
import 'package:whatsapp/screens/status_screen.dart';
import 'chat_list_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  final List<Widget> _screens = [
    ChatListScreen(),
    StatusScreen(),
    CallHistoryScreen(), // Use the imported CallHistoryScreen
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screens.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          backgroundColor: Colors.green, // AppBar color to green
          bottom: const TabBar(
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Search functionality
              },
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: () {
                // Camera functionality
              },
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: "settings",
                    child: Text("Settings"),
                  ),
                  const PopupMenuItem(
                    value: "logout",
                    child: Text("Logout"),
                  ),
                ];
              },
              onSelected: (value) {
                // Menu item selection
                if (value == "settings") {
                  // Implement settings functionality
                } else if (value == "logout") {
                  // Implement logout functionality
                }
              },
            ),
          ],
        ),
        body: TabBarView(
          children: _screens,
        ),
      ),
    );
  }
}
