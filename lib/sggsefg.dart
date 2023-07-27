import 'package:flutter/material.dart';

class PopupMenuDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Demo'),
        actions: [
          // Your popup menu button goes here
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle the action when an item is selected from the menu
              _handleAction(value, context);
            },
            itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'action1',
                  child: Text('Action 1'),
                ),
                PopupMenuItem<String>(
                  value: 'action2',
                  child: Text('Action 2'),
                ),
                // Add more actions as needed
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Tap the menu button to show the popup menu.'),
      ),
    );
  }

  void _handleAction(String action, BuildContext context) {
    // Implement your logic for each action here
    // For example, you can show a snackbar or navigate to a new screen
    switch (action) {
      case 'action1':
        GestureDetector(
          onTap: () {},

        );
        break;
      case 'action2':
        _showSnackBar(context, 'Action 2 tapped');
        break;
    // Add more cases for additional actions
      default:
        break;
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }
}

