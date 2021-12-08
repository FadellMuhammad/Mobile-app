import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MainContent(),
));

class MainContent extends StatefulWidget {
  _MainContent createState() => _MainContent();
}

class _MainContent extends State<MainContent> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        child: Column(
          children: [
            Expanded(child: Image(
              image: AssetImage("images/onlineshopremovebg.png"),
            ))
          ],
        ),
      ),
    );
  }
}