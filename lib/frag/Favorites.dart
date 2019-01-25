import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _FavoritesState();
      }
      
    }
    
class _FavoritesState extends State<Favorites>{
  List<Widget> list = [
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
          image:  AssetImage('images/b1.jpg'),
          fit: BoxFit.fill,
          ),
      ),
        color: Colors.amber[100],
        elevation: 2.0,
      ),
      Card(
      child: Container(
         child:  Image(
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
          image:  AssetImage('images/b2.jpg'),
          fit: BoxFit.fill,
          ),
      ),
        color: Colors.amber[100],
        elevation: 2.0,
      )
  ];
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      bottom: true,
      left: true,
      right: true,
      top: true,
      child: GridView.count(
        children: list,
        crossAxisCount: 2,
      ),
    );
  }
}
