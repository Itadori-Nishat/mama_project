import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreatePostFormPage extends StatelessWidget {
  CreatePostFormPage({Key? key}) : super(key: key);

  TextEditingController discriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post your ad"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height*0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Image.network("https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixlib=rb-4.0"
                    ".3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1175&q=80",
                  fit: BoxFit.contain,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ElevatedButton(onPressed: (){
                    Fluttertoast.showToast(
                      msg: "Add photo will be here",
                      backgroundColor: Colors.teal
                    );
                  },
                      child: Text("Add your picture")),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Select Type"
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Title"
                ),
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: discriptionController,
                    validator: (value) {
                      if (value!.length < 20) {
                        return 'Please enter at least 20 characters';
                      }
                      return null;
                    },
                  decoration: InputDecoration(
                      labelText: "Add description"
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Price (Tk)"
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Submit")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
