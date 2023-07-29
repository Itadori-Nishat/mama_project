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
        title: const Text("Details",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///Profile picture and details
                 Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
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
                              icon: const Icon(Icons.share)),
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
                              icon: const Icon(Icons.bookmark_add_outlined)),
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
                  child: Text("House for sale",style: TextStyle(
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

                ///Divider after price
                const Divider(),

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

                ///Similar Ads
                const Divider(thickness: 4,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("Similar ads:",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),),
                ),

                ///Add posts 1
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network("https://images.unsplash.com/photo-1568605114967-8130f3a36994?ixlib=rb-4.0.3&i"
                              "xid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ///Title
                            SizedBox(
                              width: width*0.5,
                              child: const Text("Full build up House for sell in Dhaka",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),overflow: TextOverflow.ellipsis,),
                            ),

                            ///Location
                            SizedBox(
                              width: width*0.45,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text("Mirpur 12,Dhaka",overflow: TextOverflow.ellipsis,),
                              ),
                            ),
                            ///Price
                            const Row(
                              children: [
                                Text("Tk:", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  color: Colors.teal
                                ),),
                                SizedBox(width: 5,),
                                Text("53,89,500",style: TextStyle(
                                    fontSize: 15,
                                  color: Colors.teal
                                ),)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ///Add posts 2
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network("https://images.unsplash.com/photo-1583608205776-bfd35f0d9f83?ixlib=rb-4.0."
                              "3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdXNlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ///Title
                            SizedBox(
                              width: width*0.5,
                              child: const Text("New house for sale 12 acore in Feni",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),overflow: TextOverflow.ellipsis,),
                            ),

                            ///Location
                            SizedBox(
                              width: width*0.45,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text("S.S.K Road, Feni",overflow: TextOverflow.ellipsis,),
                              ),
                            ),
                            ///Price
                            const Row(
                              children: [
                                Text("Tk:", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal
                                ),),
                                SizedBox(width: 5,),
                                Text("45,89,500",style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.teal
                                ),)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ///Add posts 3
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network("https://plus.unsplash.com/premium_photo-1661915661139-5b6a4e4a6fcc?ixlib="
                              "rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1567&q=80"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ///Title
                            SizedBox(
                              width: width*0.5,
                              child: const Text("Duplex house for rent",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),overflow: TextOverflow.ellipsis,),
                            ),

                            ///Location
                            SizedBox(
                              width: width*0.45,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text("S.S.K Road, Feni",overflow: TextOverflow.ellipsis,),
                              ),
                            ),
                            ///Price
                            const Row(
                              children: [
                                Text("Tk:", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal
                                ),),
                                SizedBox(width: 5,),
                                Text("1,50,500",style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.teal
                                ),)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),


                const SizedBox(height: 20,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
