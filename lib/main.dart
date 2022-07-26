import 'package:flutter/material.dart';
import 'package:wallet_app/onscreen/onBordingScreen.dart';
import 'package:wallet_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:homePage(),
      home:onBordingScreen(),
    );
  }
}

