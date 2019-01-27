import 'package:flutter/material.dart';
import 'package:book_app/loaders/CategoryList.dart';
import 'package:book_app/loaders/SliderCarousal.dart';

class Main extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin{
  
  initState() {
    super.initState();
  }
    
  @override
  
  Widget build(BuildContext context) {
   
    return SafeArea(
      bottom: true,
      left: true,
      right: true,
      top: true,
        child: new ListView(
          children: <Widget>[
            SliderCarousal(),
            new Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Categories",style: TextStyle(color: Colors.black45),),
            ),
            CategoryList(),
            new Padding(
              padding: EdgeInsets.only(bottom: 8.0,left: 8.0,top: 15.0,right: 8.0),
              child: Text("Featured", style: TextStyle(color: Colors.black45),),
            ),
          ],
        )
    
    );
  
  }
  dispose() {
    super.dispose();
  }

}