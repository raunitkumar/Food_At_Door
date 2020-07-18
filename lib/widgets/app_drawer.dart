import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopvenue/helper/custom_route.dart';
import 'package:shopvenue/provider/auth_provider.dart';
import 'package:shopvenue/screens/about_screen.dart';
import 'package:shopvenue/screens/auth_screen.dart';
import 'package:shopvenue/screens/cart_screen.dart';
import 'package:shopvenue/screens/developer_screen.dart';
import 'package:shopvenue/screens/order_screen.dart';
import 'package:shopvenue/screens/product_overview_screen.dart';
import 'package:shopvenue/screens/profile_screen.dart';
import 'package:shopvenue/screens/user_product_screen.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool isInit = true;
  String email = "";
  String userType = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (isInit) {
      getUserData();
    }
    isInit = false;
  }

  void getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final extractedData =
        json.decode(prefs.getString("userData")) as Map<String, Object>;
    print(extractedData);
    setState(() {
      email = extractedData["email"];
      userType = extractedData["userType"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Raunit Kumar'),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              backgroundImage: (
              
              AssetImage("assets/images/profile.jpg",) 
              ),
              
              
            //   NetworkImage(
            //       'https://avatars0.githubusercontent.com/u/24526752?s=400&u=cd0f100e560323ac8656bcb996523203a80311f9&v=4'),
            // ),
          ),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart,color: Colors.orange),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, ProductOverviewScreen.routeName);
            },
          ),
            Divider(),
          userType == "admin"
              ? Container()
              : Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person,color: Colors.orange),
                      title: Text('Profile'),
                      onTap: () {
//              Navigator.pushReplacementNamed(
//                  context, UserProductScreen.routeName);
                        Navigator.of(context).pushReplacement(
                            CustomRoute(builder: (ctx) => ProfileScreen()));
                      },
                    ),
                    Divider(),
                  ],
                ),
          ListTile(
            leading: Icon(Icons.payment,color: Colors.orange),
            title: Text('Orders'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  CustomRoute(builder: (ctx) => OrderScreen()));
            },
          ),

            Divider(),
          ListTile(
            leading: Icon(Icons.shopping_cart,color: Colors.orange),
            title: Text('Cart'),
            onTap: () {
              Navigator.pushReplacementNamed(context, CartScreen.routeName);
             
            },
          ),
          
          Divider(),
          userType == "client"
              ? Container()
              : Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.edit,color: Colors.orange),
                      title: Text('Manage Products'),
                      onTap: () {
//              Navigator.pushReplacementNamed(
//                  context, UserProductScreen.routeName);
                        Navigator.of(context).pushReplacement(
                            CustomRoute(builder: (ctx) => UserProductScreen()));
                      },
                    ),
                    Divider(),
                  ],
                ),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: Colors.orange),
            title: Text('Logout',),
            onTap: () async {
              Navigator.of(context).pop();
              await Provider.of<Auth>(context, listen: false).logout();
              Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
            },
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.help),
            title: Text('About'),
            onTap: () {
              //Navigator.pushReplacementNamed(context, OrderScreen.routeName);
              Navigator.of(context).pushReplacement(
                  CustomRoute(builder: (ctx) => AboutScreen()));
            },
          ),
           Divider(),
             userType == "admin"
              ? Container()
              : Column(
                  children: <Widget>[
                  InkWell(child: Text('App Developer\'s',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blue),),
                      onTap: () {
//              Navigator.pushReplacementNamed(
//                  context, UserProductScreen.routeName);
                        Navigator.of(context).pushReplacement(
                            CustomRoute(builder: (ctx) => DeveloperScreen()));
                      },
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
