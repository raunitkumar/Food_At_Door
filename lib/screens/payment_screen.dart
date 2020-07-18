import 'package:flutter/material.dart';
import 'package:shopvenue/screens/cart_screen.dart';
import 'package:shopvenue/provider/cart_provider.dart' show Cart;
import 'package:provider/provider.dart';


class PaymentScreen extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
      final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed:(){Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  CartScreen()));}),
      ),  
    body: 
      ListView(
          children: <Widget>[
            ListTile(
              leading: Text('Online Payment:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.chevron_right),
              onTap:(){} ,
            ),
            Divider(),
            ListTile(
              leading: Text('Cash on Delivery:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.chevron_right),
              onTap:(){} ,
            ),
            Divider(),
              ListTile(
              leading: Text('Pick Up:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.chevron_right),
              onTap:(){} ,
            ),
            ],
        ),
    );
  }
}