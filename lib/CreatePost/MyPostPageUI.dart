import 'package:flutter/material.dart';
import 'package:masud_project/CreatePost/Create%20Post.dart';
import 'package:masud_project/CreatePost/Select%20Location.dart';

class MyPostUIDesign extends StatelessWidget {
  const MyPostUIDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Posts"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePostLocationSelect()));
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text("Post will be here"),
      ),
    );
  }
}
