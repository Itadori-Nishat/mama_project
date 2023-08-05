import 'package:flutter/material.dart';

class Intro_1 extends StatelessWidget {
  const Intro_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: NetworkImage("https://img.freepik.com/free-icon/google_318-278809.jpg?w=360"),height: 100,)),
          SizedBox(height: 50,),
          Text("Google is a search engine")
        ],
      ),
    );
  }
}
///Intro 2

class Intro_2 extends StatelessWidget {
  const Intro_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: NetworkImage("https://st3.depositphotos.com/14548252/3770"
              "8/i/450/depositphotos_377089492-stock-photo-audio-wave-logo-music-equalizer.jpg"), height: 150,)),
          SizedBox(height: 50,),
          Text("Music makes you Happy")
        ],
      ),
    );
  }
}


///Intro 3


class Intro_3 extends StatelessWidget {
  const Intro_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS6dnkKzG4VaxB4ZPhG43TOjomukVsgrPoVQ-SouRB-g&s"), height: 100,)),
          SizedBox(height: 50,),
          Text("I am not lazy.I'm just on energy saving mode")
        ],
      ),
    );
  }
}
