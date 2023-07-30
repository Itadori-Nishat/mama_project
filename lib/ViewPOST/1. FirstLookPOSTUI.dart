import 'package:flutter/material.dart';
import '2. ProductDetailsUI.dart';

class PostUiDesign extends StatelessWidget {
  const PostUiDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductUIDesign()));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Images will be here
            Container(
              height: height*0.3,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(

              ),
              child: Image.network(
                "https://images.unsplash.com/photo-1554995207-c18c203602cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                fit: BoxFit.contain,
              ),
            ),

            ///Title here
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Bed will be sold",style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold
              ),),
            ),

            ///Price Tag
            const Row(
              children: [
                Text("Tk:", style: TextStyle(
                    fontSize: 19,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 5,),
                Text("8,500",style: TextStyle(
                  fontSize: 17,
                  color: Colors.teal,
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
