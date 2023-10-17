import 'package:flutter/material.dart';
import '../main.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with your status data
    final List<Status> statusData = [
      Status(
        username: "My Status",
        timestamp: "Add status",
        color: Colors.green, // Customize color
        isMyStatus: true, // Identify it as "My Status"
      ),
      Status(
        username: "Alice Smith",
        timestamp: "2 hours ago",
        color: Colors.blue,
      ),
      Status(
        username: "Bob Johnson",
        timestamp: "3 hours ago",
        color: Colors.red,
      ),

    ];

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context, index) {
              final status = statusData[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: status.color,
                  child: status.isMyStatus
                      ? const Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                      : Text(status.username[0]),
                ),
                title: Text(status.username),
                subtitle: Text(status.timestamp),
                onTap: () {
                  // Handle status item tap here
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
                // Handle the Camera icon tap
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.camera_alt),
            ),
          ),
        ),
      ],
    );
  }
}