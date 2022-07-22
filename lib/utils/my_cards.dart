import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class myCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryDate;
  final int expiryYear;
  final color;
  const myCard({Key? key ,
  required this.balance,required this.cardNumber,required this.expiryDate,required this.expiryYear,required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
              width:300,
              padding:EdgeInsets.all(20),
              decoration:BoxDecoration(
                color:color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Balance',style: TextStyle(color:Colors.white)),
                      Image.asset('assets/icons/visa.png',height:60)
                    ],
                  ),
                  // SizedBox(height:10),
                  Text('\$ '+ balance.toString(),style: TextStyle(fontSize:36,color:Colors.white,fontWeight:FontWeight.bold)),
                  SizedBox(height:40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(cardNumber.toString(),style: TextStyle(color:Colors.white)),
                    Text(expiryDate.toString()+"/"+ expiryYear.toString(),style: TextStyle(color:Colors.white)),
                  ],
                  )
                ],
              ),),
    );
  }
}