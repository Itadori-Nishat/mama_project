import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:masud_project/CreatePost/4. ProductPREVIEWpage.dart';

class CreatePostFormPage extends StatefulWidget {
  CreatePostFormPage({Key? key}) : super(key: key);

  @override
  State<CreatePostFormPage> createState() => _CreatePostFormPageState();
}

class _CreatePostFormPageState extends State<CreatePostFormPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _discriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();


  ///Image Picker
  File? selectedPhoto;

  @override
  Widget build(BuildContext context) {
    void _uploadPhoto() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.custom, allowedExtensions: ['jpg', 'jpeg', 'png']);
      if (result != null) {
        File file = File(result.files.single.path!);
        setState(() {
          selectedPhoto = file;
        });
      }
    }
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
                ///Pick Image
                if (selectedPhoto != null)
                Container(
                  height: height*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Image.file(
                      selectedPhoto!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ElevatedButton(onPressed: (){
                      _uploadPhoto();
                    },
                        child: Text(
                          selectedPhoto == null ? "Add photo" : "Change photo"
                        )),
                  ),
                ),

                ///Select Type
                TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: _typeController,
                  validator: (val) {
                    if (val == null || val!.isEmpty) {
                      return 'Select type';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      labelText: "Select Type"
                  ),
                ),

                ///Title
                TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  controller: _titleController,
                  validator: (val) {
                    if (val == null || val!.isEmpty) {
                      return 'Please give title';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      labelText: "Title"
                  ),
                ),

                ///Description
                TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  maxLines: 5,
                  maxLength: 1500,
                  minLines: 1,
                  controller: _discriptionController,
                    validator: (value) {
                      if (value!.length < 10) {
                        return 'Please enter at least 20 characters';
                      }
                      return null;
                    },
                  decoration: const InputDecoration(
                      labelText: "Add description"
                  ),
                ),

                ///Price
                TextFormField(
                  controller: _priceController,
                  validator: (val) {
                    if(val == null || val!.isEmpty) {
                      return "Enter price";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Price (Tk)"
                  ),
                ),

                ///Phone Number
                IntlPhoneField(
                  initialCountryCode: "BD",
                  controller: _phonecontroller,
                  decoration: InputDecoration(
                  ),
                ),

                ///Location select
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductUIDesign1(
                              imageFile: selectedPhoto,
                              type: _typeController.text,
                              title: _titleController.text,
                              contact: _phonecontroller.text,
                              description: _discriptionController.text,
                              price: _priceController.text,
                            )));
                          }
                        },
                        child: const Text("Submit")),
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
