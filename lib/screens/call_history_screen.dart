import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';

class CallHistoryScreen extends StatelessWidget {
  const CallHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with your call history data
    final List<CallHistoryEntry> callHistoryData = [
      CallHistoryEntry(
        name: "John Doe",
        timestamp: "Yesterday",
        color: Colors.blue,
      ),
      CallHistoryEntry(
        name: "Alice Smith",
        timestamp: "2 days ago",
        color: Colors.red,
      ),
      // Add more call history entries here
    ];

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Recent",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: callHistoryData.length,
            itemBuilder: (context, index) {
              final call = callHistoryData[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: call.color,
                  child: Text(call.name[0]),
                ),
                title: Text(call.name),
                subtitle: Text(call.timestamp),
                onTap: () {
                  // Handle call history item tap here
                },
              );
            },
          ),
        ),
        Align( // Align the FloatingActionButton to the bottom right
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FloatingActionButton(
              onPressed: () {
                // Handle the Phone Call icon tap
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.phone),
            ),
          ),
        ),
      ],
    );
  }
}

