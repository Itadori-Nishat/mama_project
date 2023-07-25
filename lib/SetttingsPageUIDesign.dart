import 'package:flutter/material.dart';

class SettingsUIDesign extends StatelessWidget {
  SettingsUIDesign({Key? key}) : super(key: key);

  String? userName = "Andrew Tate";
  String? userPhone = "+88 01817-171717";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          Center(child: Column(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
              ),
              ElevatedButton(onPressed: (){}, child:
              Text("Edit profile"))
            ],
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${userName}", style: TextStyle(
                    fontSize: 18
                ),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${userPhone}", style: TextStyle(
                  fontSize: 18
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
