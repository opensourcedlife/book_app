import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        title: new Text('Settings'),
      ),
      body: new Center(
        child: new Text('Settings Page', style: new TextStyle(fontSize: 24.0)),
      ),
    );
  }
}
