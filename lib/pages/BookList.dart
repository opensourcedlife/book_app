import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        title: new Text('Book List'),
      ),
      body: new Center(
        child: new Text('Book List Page', style: new TextStyle(fontSize: 24.0)),
      ),
    );
  
  }
}
