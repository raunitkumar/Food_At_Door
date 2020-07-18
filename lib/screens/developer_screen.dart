import 'package:flutter/material.dart';
import 'package:shopvenue/screens/product_overview_screen.dart';

class DeveloperScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer\'s'),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed:(){Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  ProductOverviewScreen()));}),
      ),  
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text('We are a bunch of developers from Veer Surendra Sai University of Technology. We are final year students of Computer Science Engineering. We are readily available for developing more such Apps in Future.'),),
      ),);
  }
}