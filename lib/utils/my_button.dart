import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButtons extends StatelessWidget {
  final iconImagePath;
  final String buttonText;

  const MyButtons({
    Key? key,
  required this.iconImagePath,required this.buttonText,}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Container(height:80,
                padding:EdgeInsets.all(20),
                decoration:BoxDecoration(
                  // color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 20,
                      spreadRadius: 10,
                    )
                  ],
                ),
                child:Center(
                  child:Image.asset(iconImagePath),
                )
                ),
                SizedBox(height:12),
                Text(buttonText,
                style: TextStyle(
                  fontSize:20,
                fontWeight:FontWeight.bold,
                color:Colors.grey[700],
                )
                )
              ],
                );
  }
}