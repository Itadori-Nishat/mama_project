import 'package:flutter/material.dart';
import 'package:masud_project/CreatePost/CreatePostForm.dart';

class CreatePostUI extends StatefulWidget {
  const CreatePostUI({Key? key}) : super(key: key);

  @override
  State<CreatePostUI> createState() => _CreatePostUIState();
}

class _CreatePostUIState extends State<CreatePostUI> {
  String selectedType = "Electronics";
  List<String> dropdownOptions = [
    "Electronics",
    "Fashion",
    "Home & Garden",
    "Books & Literature",
    "Health & Fitness",
    "Sports & Outdoors",
    "Food & Cooking",
    "Travel & Adventure",
    "Movies & Entertainment",
    "Art & Design",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post your House"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Welcome name
            const Row(
              children: [
                Text("Welcome",style: TextStyle(
                  fontSize: 18
                ),),
                SizedBox(width: 5,),
                Text("Name",style: TextStyle(
                    fontSize: 19
                ),)
              ],
            ),
            Text("Choose your category",style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 15
            ),),

            ///Category
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down),
                      value: selectedType,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedType = newValue!;
                        });
                      },
                      items: dropdownOptions.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePostFormPage()));
                    },
                        child: Text("Next"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
