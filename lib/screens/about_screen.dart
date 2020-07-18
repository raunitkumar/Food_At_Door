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
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text('At ...... , We aim at providing best food to our customers and in the least time possible.'),),
      ),);
      //  body: Center(            
      // child: Text('We are a bunch of developers from Veer Surendra Sai University of Technology(VSSUT).We are final year students from Computer Science and Engineering'),),          
  }
}