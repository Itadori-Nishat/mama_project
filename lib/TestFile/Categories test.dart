import 'package:flutter/material.dart';


class CategorySelectionScreen extends StatefulWidget {
  @override
  _CategorySelectionScreenState createState() => _CategorySelectionScreenState();
}

class _CategorySelectionScreenState extends State<CategorySelectionScreen> {
  String? selectedCategory;
  List<String> categories = [
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Category'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton(
                value: selectedCategory,
                hint: Text('Select a category'),
                onChanged: (newValue) {
                  setState(() {
                    selectedCategory = newValue;
                  });
                },
                items: categories.map<DropdownMenuItem<String>>((String category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (selectedCategory != null) {
                    print('Selected category: $selectedCategory');
                    // You can add code to navigate to another screen or perform further actions here
                  } else {
                    print('Please select a category');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
