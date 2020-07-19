import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopvenue/provider/cart_provider.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String title;
  final double preprationTime;

  CartItem(this.id, this.productId, this.price, this.quantity, this.title,this.preprationTime);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        cart.removeItem(productId);
      },
      confirmDismiss: (direction) {
        return showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text("Are you sure?"),
                  content: Text("Do you want to remove item from the cart?"),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("NO"),
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                    ),
                    FlatButton(
                      child: Text("YES"),
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                    )
                  ],
                ));
      },
      background: Container(
          color: Colors.red,
          child: Icon(
            Icons.delete,
            color: Colors.red,
            size: 40,
          ),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4)),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: FittedBox(
                    child: Text(
                  '\$ ${price.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            title: Text(title),
            subtitle: Text('Total: \$${price.toStringAsFixed(2)}*$quantity = \$${price * quantity}'),
            trailing: new IconButton(icon: Icon(Icons.delete),
            onPressed: (){
             // cart.removeSingleItem(title);
            },
          ),
        ),
      ),
      ),
    );
  }
}
