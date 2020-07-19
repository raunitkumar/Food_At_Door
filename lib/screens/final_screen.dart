import 'package:flutter/material.dart';
import 'package:shopvenue/screens/product_overview_screen.dart';

class FinalScreen extends StatefulWidget {
  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed:(){Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  ProductOverviewScreen()));}),),
      body:new Center(
        child:new Column(
          children:<Widget>[
             Padding(
               padding: const EdgeInsets.only(top:22.0),
               child: Image.asset("assets/images/ThumbsUp.gif",
               height:200.0,
               width:200.0),
             ),
             Text("Sit back and Relax..!!",style: TextStyle(fontSize:24,fontWeight:FontWeight.bold,color: Colors.green),),
             Text("Our Chef's are busy preparing your order",style: TextStyle(fontSize:18,fontWeight:FontWeight.bold,color: Colors.orange),),
             Divider(height:20),
             Padding(
               padding: const EdgeInsets.only(left:12,right:8,top:50.0),
               child: Text("For Online Payments, you can GPay, PhonePe or Paytm us on:",style: TextStyle(fontSize:16,color: Colors.blue),),
             ),
             SelectableText("7992270458",style: TextStyle(fontSize:18,fontWeight:FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline),onTap:(){},),
             ],
            ),
          ),
        );
    }
}