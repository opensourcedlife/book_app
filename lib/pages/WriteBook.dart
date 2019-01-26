import 'package:flutter/material.dart';

class WriteBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        title: new Text('Write Book'),
      ),
      body: new Center(
        child: new EditableText(controller: null, focusNode: null, style: null, cursorColor: null)
      ),
    );
  }
}
