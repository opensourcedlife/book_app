import 'package:flutter/material.dart';

//account class
class Account extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AccountState();
      }
    
      
    }
    
class _AccountState extends State<Account> {
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
