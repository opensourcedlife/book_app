import 'package:flutter/material.dart';

//account class
class Account extends StatelessWidget {
  static final String routeName = '/account';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Account'),
      ),
      body: new Center(
        child: new Text('Account', style: new TextStyle(fontSize: 24.0)),
      ),
    );
  }
}
