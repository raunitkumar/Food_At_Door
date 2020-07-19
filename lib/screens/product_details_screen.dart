import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopvenue/provider/products_provider.dart';

class ProductDetailsScreen extends StatefulWidget {
  static const routeName = '/product_details_screen';

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
   int _itemCounter=1;

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final selectedProduct =
    Provider.of<Products>(context, listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "Food Details",
            style: TextStyle(fontSize: 18.0, color: Colors.black),
          ),
         // backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
        ),
        
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child:  Image.network(
                    selectedProduct.imageURL,
                     fit: BoxFit.cover,
                   ),
              ),

           Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                       selectedProduct.title,
                      style: TextStyle(fontSize: 24.0, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Text(
                      "\u20B9 ${selectedProduct.price}",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),

               Padding(
                 padding: const EdgeInsets.only(left:8.0),
                 child: Text(
                  'Prep. Time-${selectedProduct.preprationTime}min',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.orange, fontSize: 18),
              ),
               ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  selectedProduct.description,
                  softWrap: true,
                ),
              ),
              Spacer(),
              // SizedBox(
              //   height: 100,
              // ),  

              // ListTile(
              //   title: Text("Quantity"),
              //   trailing: new Row(
              //     children:<Widget>[
              //       _itemCounter!=1?new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCounter--),):new Container(),
              //       new Text(_itemCounter.toString()),
              //       new IconButton(icon: new Icon(Icons.add), onPressed: (){ setState((){ _itemCounter++;});})
              //     ],
              //   ),
              // ),

               Align(alignment: Alignment.bottomCenter,
              child: ButtonTheme(
                minWidth: 370,
                height: 50.0,
                child: RaisedButton(onPressed: (){},
                color: Colors.orange,
                highlightColor: Colors.orange[100],
                child:Text("Add to Cart",style:TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                ),),
              ),
              ),          
            ],
          ),
        ),
      );
  }
}

