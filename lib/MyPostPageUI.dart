import 'package:flutter/material.dart';

class MyPostUIDesign extends StatelessWidget {
  const MyPostUIDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Posts"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text("Post will be here"),
      ),
    );
  }
}
