import 'package:flutter/material.dart';

class CategorySelectionScreen extends StatefulWidget {
  @override
  _CategorySelectionScreenState createState() => _CategorySelectionScreenState();
}

class _CategorySelectionScreenState extends State<CategorySelectionScreen> {
  List<String> categories = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
    'Category 5',
  ];
  String? selectedCategory;
  TextEditingController customCategoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Selection'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index]),
            onTap: () {
              // Handle category selection here
              setState(() {
                selectedCategory = categories[index];
              });
            },
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Show dialog to add custom category
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Add Custom Category'),
                    content: TextField(
                      controller: customCategoryController,
                      decoration: InputDecoration(labelText: 'Category Name'),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          // Add custom category and dismiss dialog
                          String customCategory = customCategoryController.text.trim();
                          if (customCategory.isNotEmpty) {
                            setState(() {
                              categories.add(customCategory);
                              selectedCategory = customCategory;
                            });
                            customCategoryController.clear();
                            Navigator.pop(context);
                          }
                        },
                        child: Text('Add'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Dismiss dialog
                          customCategoryController.clear();
                          Navigator.pop(context);
                        },
                        child: Text('Cancel'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Perform action with selected category
              if (selectedCategory != null) {
                print('Selected category: $selectedCategory');
                // You can add code to navigate to another screen or perform further actions here
              } else {
                print('Please select a category');
              }
            },
            child: Icon(Icons.check),
          ),
        ],
      ),
    );
  }
}
