import 'package:flutter/material.dart';

class CreatePostUI extends StatelessWidget {
  const CreatePostUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Post you House"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            Text("Choose an option below to post",style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 15
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height*0.1,
                  width: width*0.3,
                  color: Colors.red,
                ),
                Container(
                  height: height*0.1,
                  width: width*0.3,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Container(
                  height: height*0.1,
                  width: width*0.3,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
