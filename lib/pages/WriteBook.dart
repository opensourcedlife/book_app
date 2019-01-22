import 'package:flutter/material.dart';

class WriteBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        title: new Text('Write Book'),
      ),
      body: new Center(
        child: new Text('Write Book Page', style: new TextStyle(fontSize: 24.0)),
      ),
    );
  }
}
