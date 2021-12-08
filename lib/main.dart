import 'dart:io';

import 'package:flutter/material.dart';
import 'package:practical_test/main_content.dart';
import 'package:practical_test/product.dart';
import 'package:practical_test/promo.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    ));

class FirstScreen extends StatefulWidget {
  _FirstScreen createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  Widget mainWidget;

  void initState() {
    mainWidget = MainContent();
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  _loadingClose() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            child: Row(
              children: [
                new CircularProgressIndicator(),
                Text('Loading'),
              ],
            ),
          );
        });
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pop(context);
      exit(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Shop'),
        backgroundColor: Colors.amber[800],
      ),
      body: Container(
        child: mainWidget,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.yellow[800]),
              child: Container(
                child: Column(children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage("images/onlineshop.jpg"),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Online Shop',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    'onlineshop.com',
                    style: TextStyle(fontSize: 12.0, color: Colors.white),
                  )
                ]),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  mainWidget = MainContent();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Product'),
              onTap: () {
                setState(() {
                  mainWidget = product();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Promo'),
              onTap: () {
                setState(() {
                  mainWidget = promo();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Close'),
              onTap: () {
                _loadingClose();
              },
            )
          ],
        ),
      ),
    );
  }
}
