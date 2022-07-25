import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen1State();
}

class _screen1State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child:Center(child: (Text("page2")))
        
    );
  }
}