import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/onscreen/Screen1.dart';
import 'package:wallet_app/onscreen/screen2.dart';
import 'package:wallet_app/onscreen/screen3.dart';
import 'package:wallet_app/pages/home_page.dart';

class onBordingScreen extends StatefulWidget {
  const onBordingScreen({Key? key}) : super(key: key);

  @override
  State<onBordingScreen> createState() => _onBordingScreenState();
}

class _onBordingScreenState extends State<onBordingScreen> {
  PageController  _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller:_controller,
              // scrollDirection: Axis.vertical,
              onPageChanged: (index){
                setState(() {
                  onLastPage=(index==2);
                });
              },
            children: [
              screen1(),
              screen2(),
              screen3(),
            ],
          ),
          Container(
            alignment:Alignment(0,0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
              GestureDetector(
                onTap:(){
                  _controller.jumpToPage(2);
                },
                child: Text("Skip")
                ),
              // dot
                SmoothPageIndicator(
                  controller: _controller,
                  count:3,
                  effect:  SlideEffect(  
                  spacing:  8.0,  
                  dotColor:  Colors.grey,  
                  activeDotColor:  Colors.indigo  
                  ),  
                ),
                // next
                onLastPage
                ? GestureDetector(
                onTap:() {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return homePage();
                  },
                  ),
                  );
                },
                child: Text("Done")
              )
              : GestureDetector(
                onTap:() {
                  _controller.nextPage(
                    duration:Duration(milliseconds: 200),
                    curve:Curves.easeIn
                  );
                },
                child: Text("Next")
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}