import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductUIDesign extends StatelessWidget {
  ProductUIDesign({Key? key}) : super(key: key);

  final List<String> images = [
    'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1175&q=80', // Replace with your image URLs
    'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',

  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Profile picture and details
               Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Andrew Tate", style: TextStyle(fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),),
                              Text("Dhaka, Bangladesh"),
                              Row(
                                children: [
                                  Text("12:18 am"),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Text("•"),
                                  ),
                                  Text("July 21, 2023"),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: (){
                              Fluttertoast.showToast(
                                  msg: "Shared",
                                  toastLength: Toast.LENGTH_SHORT,
                                  backgroundColor: Colors.teal,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );
                            },
                            icon: Icon(Icons.share)),
                        IconButton(
                            onPressed: (){
                              Fluttertoast.showToast(
                                  msg: "Bookmarked",
                                  toastLength: Toast.LENGTH_SHORT,
                                  backgroundColor: Colors.teal,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );
                            },
                            icon: Icon(Icons.bookmark_add_outlined)),
                      ],
                    ),
                  ],
                ),
              ),

              ///Room picture
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                ),
                items: images.map((imageURL) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Image.network(
                          imageURL,
                          fit: BoxFit.contain,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              ///Title
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Bed will be sold",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold
                ),),
              ),

              ///Contact and price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Tk:", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(width: 5,),
                          Text("8,500",style: TextStyle(
                            fontSize: 18
                          ),)
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Contact",
                        toastLength: Toast.LENGTH_SHORT,
                        backgroundColor: Colors.teal,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }, child: const Text("Contact"))
                ],
              ),

              ///Description
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description:",style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold
                    ),),
                    const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has"
                        " been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley "
                        "of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also"
                        " the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s"
                        " with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop "
                        "publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
