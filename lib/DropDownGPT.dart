import 'package:flutter/material.dart';
import 'package:masud_project/ViewPOST/1. FirstLookPOSTUI.dart';
import 'CreatePost/1. Select Location.dart';
import 'ShowDialougeBoxUIDesign.dart';

class DropDownButtonType extends StatefulWidget {
  @override
  _DropDownButtonTypeState createState() => _DropDownButtonTypeState();
}

class _DropDownButtonTypeState extends State<DropDownButtonType> {
  String? location = "Dhaka";
  List<String> _items = [
    "Dhaka",
    "Chittagong",
    "Sylhet",
    "Cox's Bazar",
    "Rangpur",
    "Khulna",
    "Barisal",
    "Mymensingh",
    "Rajshahi",
    "Jessore",
  ];


  String selectedType = 'Flat'; // Default selected option
  List<String> dropdownOptions = ['Flat', 'Sublet', 'Bachelor', 'Family'];


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FloatingDialougeBox()));
          },
              icon: Icon(Icons.format_align_center))
        ],
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePostLocationSelect()));
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Location Select
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Location:     $location',
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(width: 20),
                    DropdownButton<String>(
                      value: location,
                      items: _items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          location = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            ///Flat Type
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Flat Type:    $selectedType',
                      style: const TextStyle(
                          fontSize:18
                      ),
                    ),
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
                  ],
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
                  height: height*0.3,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return PostUiDesign();
                    },

                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

