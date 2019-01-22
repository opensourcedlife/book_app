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
    return Center(
      child: Text("Completed Books"),
    );
  }
}
