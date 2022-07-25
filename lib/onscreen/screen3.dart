import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  State<screen3> createState() => _screen1State();
}

class _screen1State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child:Center(child: (Text("page3")))
        
    );
  }
}