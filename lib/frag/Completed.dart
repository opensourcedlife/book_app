import 'package:flutter/material.dart';

class Completed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CompletedState();
  }
}

class _CompletedState extends State<Completed> {
  List<Widget> list = [
    Card(
      child: Container(
         child: Image(
          image:  AssetImage('images/b1.jpg'),
          fit: BoxFit.fill,
          ),
      ),
        color: Colors.amber[100],
        elevation: 2.0,
      ),
      Card(
      child: Container(
        child: Image(
          image:  AssetImage('images/b2.jpg'),
          fit: BoxFit.fill,
          ),
      ),
        color: Colors.amber[100],
        elevation: 2.0,
      ),
      Card(
      child: Container(
         child:  Image(
          image:  AssetImage('images/b6.jpg'),
          fit: BoxFit.fill,
          ),
      ),
        color: Colors.amber[100],
        elevation: 2.0, 
      ),
      Card(
      child: Container(
         child: Image(
          image:  AssetImage('images/b4.png'),
          fit: BoxFit.fill,
          ),
      ),
        color: Colors.amber[100],
        elevation: 2.0,
      ),
      Card(
      child: Container(
         child: Image(
          image:  AssetImage('images/b5.jpg'),
          fit: BoxFit.fill,
          ),
      ),
        color: Colors.amber[100],
        elevation: 2.0,
      ),
      Card(
      child: Container(
         child: Image(
          image:  AssetImage('images/b6.jpg'),
          fit: BoxFit.fill,
          ),
      ),
        color: Colors.amber[100],
        elevation: 2.0,
      )
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      left: true,
      right: true,
      bottom: true,
      top: true,
      child: GridView.count(
        children: list,
        crossAxisCount: 2,
      ),
    );
  }
}
