import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:masud_project/CreatePost/CreatePostPREVIEW.dart';
import 'package:masud_project/CreatePost/Select%20Location.dart';

class CreatePostFormPage extends StatelessWidget {
  CreatePostFormPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _typeController = new TextEditingController();
  final TextEditingController _titleController = new TextEditingController();
  TextEditingController _discriptionController = new TextEditingController();
  TextEditingController _priceController = new TextEditingController();

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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Image.network("https://cdn-media-1.freecodecamp.org/images/1*2H0HPHmFNs2t78Zog8kd9w.png",
                      fit: BoxFit.contain,),
                  ),
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
                  textCapitalization: TextCapitalization.sentences,
                  controller: _typeController,
                  validator: (val) {
                    if (val == null || val!.isEmpty) {
                      return 'Select type';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Select Type"
                  ),
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: _titleController,
                  validator: (val) {
                    if (val == null || val!.isEmpty) {
                      return 'Please give title';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Title"
                  ),
                ),
                TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: _discriptionController,
                    validator: (value) {
                      if (value!.length < 10) {
                        return 'Please enter at least 20 characters';
                      }
                      return null;
                    },
                  decoration: InputDecoration(
                      labelText: "Add description"
                  ),
                ),
                TextFormField(
                  controller: _priceController,
                  validator: (val) {
                    if(val == null || val!.isEmpty) {
                      return "Enter price";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Price (Tk)"
                  ),
                ),

                ///Location select

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePostPreviewPage(
                              type: _typeController.text,
                              title: _titleController.text,
                              description: _discriptionController.text,
                              price: _priceController.text,
                            )));
                          }
                        },
                        child: Text("Submit")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
