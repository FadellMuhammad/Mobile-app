import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: promo(),
    ));

class promo extends StatefulWidget {
  _promoState createState() => _promoState();
}

class _promoState extends State<promo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(padding: EdgeInsets.all(10.0)),
          Center(
            child: Image(image: AssetImage("images/promo.jpg")),
          ),
          Text(
            'Promo Gratis Ongkir',
            style: TextStyle(fontSize: 20),
          ),
           Padding(padding: EdgeInsets.all(10.0)),
          Center(
            child: Image(image: AssetImage("images/promo2.jpg")),
          ),
          Text(
            'Promo 10.10',
            style: TextStyle(fontSize: 20),
          ),
           Padding(padding: EdgeInsets.all(10.0)),
          Center(
            child: Image(image: AssetImage("images/promo3.jpg")),
          ),
          Text(
            'Promo Diskon 50%',
            style: TextStyle(fontSize: 20),
          ),
           Padding(padding: EdgeInsets.all(10.0)),
          Center(
            child: Image(image: AssetImage("images/promo4.jpg")),
          ),
          Text(
            'Promo Hemat',
            style: TextStyle(fontSize: 20),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          Center(
            child: Image(image: AssetImage("images/promo5.jpg")),
          ),
          Text(
            'Promo Diskon',
            style: TextStyle(fontSize: 20),
          ),
        ]),
      ),
    );
  }
}
