import 'package:flutter/material.dart';
import 'package:shopvenue/screens/product_overview_screen.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed:(){Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  ProductOverviewScreen()));}),
      ),  

       body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/restaurant.jpg",))
                ),
              ),

               Padding(
                 padding: const EdgeInsets.only(top:12.0,bottom:6.0),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    Text(
                       "Location:",
                      style: TextStyle(fontSize: 20.0, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Mango,Jamshedpur",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    ],
                    ),
                    ],
              ),
               ),

                Padding(
                  padding: const EdgeInsets.only(bottom:14.0),
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    Text(
                       "Contact No:",
                      style: TextStyle(fontSize: 20.0, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "7992270458",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    ],
                    ),
                    ],
              ),
                ),

        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text("At ...... , We aim at providing our Customers the best food and in the least time possible.What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
         style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),),
        ),
        ],
       ),
      ),
    );
  }
}