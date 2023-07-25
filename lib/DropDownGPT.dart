import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:masud_project/MyPostPageUI.dart';
import 'package:masud_project/ProductUI%20Design.dart';
import 'package:masud_project/SetttingsPageUIDesign.dart';

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
        title: const Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
              ),
                accountName: Text("Andrew Tate"),

                accountEmail: Text("+88 01817-171717")),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle drawer item tap here
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsUIDesign()));
              },
            ),
            ListTile(
              leading: Icon(Icons.post_add),
              title: Text('My posts'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyPostUIDesign()));
              },
            ),
            ListTile(
              leading: Icon(Icons.post_add),
              title: Text('Log out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
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
                child: Container(
                  height: height*0.3,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return ProductUIDesign();
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

