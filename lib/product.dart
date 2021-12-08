import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: product(),
    ));

class product extends StatefulWidget {
  _product createState() => _product();
}

class _product extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Image(
                        image: AssetImage("images/laptop.jpg"),
                        width: 150,
                        height: 150,
                      ),
                    )),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Acer',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.yellow[800]),
                        ),
                        Text('Price Rp12.000.000'),
                        Text('Location : Bandar Lampung'),
                      ],
                    ),
                  ),
                )
              ],
            ),
             Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Image(
                        image: AssetImage("images/laptop2.jpg"),
                        width: 150,
                        height: 150,
                      ),
                    )),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Asus',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.yellow[800]),
                        ),
                        Text('Price Rp11.000.000'),
                        Text('Location : Jakarta'),
                      ],
                    ),
                  ),
                )
              ],
            ),
 Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Image(
                        image: AssetImage("images/laptop3.jpg"),
                        width: 150,
                        height: 150,
                      ),
                    )),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lenovo',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.yellow[800]),
                        ),
                        Text('Price Rp8.000.000'),
                        Text('Location : Bogor'),
                      ],
                    ),
                  ),
                )
              ],
            ),
             Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Image(
                        image: AssetImage("images/laptop4.jpg"),
                        width: 150,
                        height: 150,
                      ),
                    )),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apple',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.yellow[800]),
                        ),
                        Text('Price Rp15.000.000'),
                        Text('Location : Palembang'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
