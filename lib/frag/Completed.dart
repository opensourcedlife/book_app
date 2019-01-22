import 'package:flutter/material.dart';

class Completed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CompletedState();
  }
}

class _CompletedState extends State<Completed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Text(
          "Completed",
          style: TextStyle(color: Colors.teal),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
