import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utils/my_cards.dart';
import 'package:wallet_app/utils/my_button.dart';
import 'package:wallet_app/utils/my_list_tile.dart';



class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final  _controller= PageController() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton( 
        onPressed: () {  },
        backgroundColor: Colors.pink,
        child: Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child:Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed:(){}, icon: Icon(Icons.home,size:35,color:Colors.pink)),
              IconButton(onPressed:(){}, icon: Icon(Icons.settings,size:35,color:Colors.grey,)),
            ],
          ),
        )
      ),
      body:SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
              //appbar
              Padding(
                padding: EdgeInsets.symmetric(horizontal:25,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                    Text('My',style: TextStyle(fontSize:28,fontWeight:FontWeight.bold),
                    ),
                    Text('Cards',style: TextStyle(fontSize:28),
                    ),
                  ]
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(color:Colors.grey[400],
                  shape: BoxShape.circle
                  ),
                  child:Icon(Icons.add),
                  ),
                  ],
                
                ),
              ),
              SizedBox(height:20),
          
              //cards
              Container(
                height: 200,
                child:PageView(
                  controller:_controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                  myCard(
                    balance:3250.20,
                    expiryDate: 15,
                    expiryYear: 25,
                    color:Colors.deepPurple[300], cardNumber: 12345678,
                  ),
                  myCard(
                    balance:4450.20,
                    expiryDate: 10,
                    expiryYear: 27,
                    color:Colors.blue[300], cardNumber: 12345678,
                  ),myCard(
                    balance:5250.20,
                    expiryDate: 05,
                    expiryYear: 29,
                    color:Colors.green[300], cardNumber: 12345678,
                  ),
                  
          
                ],)
                ),
                SizedBox(height:25),
                SmoothPageIndicator(controller: _controller,
                 count: 3,
                 effect:ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                 ),),
                //  3 button
                
                SizedBox(height:20),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      // send
                      MyButtons(
                        iconImagePath:'assets/icons/send.png',
                        buttonText: 'Send',
                      ),
                      // pay
                      MyButtons(
                        iconImagePath:'assets/icons/pay.png',
                        buttonText: 'Pay',
                      ),
                      //bills
                      MyButtons(
                        iconImagePath:'assets/icons/bill.png',
                        buttonText: 'Bills',
                      ),
                    ],
                  ),
                ),
                // sat
          
                SizedBox(height:15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25),
                  child: Column(
                    children: [
                      MyListTile(iconImagePath: 'assets/icons/analytics.png', titleTitle: 'Statistics', titleSubTitle: 'Payment and Income'),
                      MyListTile(iconImagePath: 'assets/icons/transction.png', titleTitle: 'Transactions', titleSubTitle: 'Transactions History'),
                    ],
                  ),
                ),
            ],
            ),
          ),
        ),
      ),

    );
  }
}