import 'package:flutter/material.dart';

import 'Create Post.dart';

class CreatePostLocationSelect extends StatelessWidget {
  const CreatePostLocationSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select your area"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 100,
                  child: Image.network("https://img.icons8.com/?size=512&id=63766&format=png"),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Your Location"
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePostUI()));
              },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Next",style: TextStyle(
                      fontSize: 17
                    ),),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
