import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Intro 1.dart';

class FinalIntroHomePage extends StatelessWidget {
  FinalIntroHomePage({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: PageView(
                  controller: _controller,
                  children: [
                    Intro_1(),
                    Intro_2(),
                    Intro_3(),
                  ],
                ),
              ),
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
                spacing: 10,
                activeDotColor: Colors.purple,
                dotColor: Colors.grey,
                dotHeight: 10,
                dotWidth: 10

            ),
          ),

        ],
      ),
    );
  }
}