import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    final title = 'Payment';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}