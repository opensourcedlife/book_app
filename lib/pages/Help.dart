import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        title: new Text('Help & Feedback'),
      ),
      body: new Center(
        child: new Text('Help & Feedback Page', style: new TextStyle(fontSize: 24.0)),
      ),
    );
  }
}
