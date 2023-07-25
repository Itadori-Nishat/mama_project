import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductUIDesign extends StatelessWidget {
  ProductUIDesign({Key? key}) : super(key: key);

  final List<String> images = [
    'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80', // Replace with your image URLs
    'https://images.unsplash.com/photo-1589834390005-5d4fb9bf3d32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
    'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=958&q=80',
    'https://images.unsplash.com/photo-1589834390005-5d4fb9bf3d32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',

  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ///Profile picture and details
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
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
              Icon(Icons.bookmark_add_outlined)
            ],
          ),
        ),
        ///Room picture
        CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: false,
            height: height*0.3,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
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
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        )
      ],
    );
  }
}
