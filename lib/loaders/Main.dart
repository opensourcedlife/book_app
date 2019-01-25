import 'package:flutter/material.dart';

class Main extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin{
  var _initialPage = 0;
  var _color = Colors.white10;
   Animation<double> animation;
  AnimationController controller;

  
  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 3), vsync: this
        );
    animation = Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
        setState(() {
         _color = Colors.blue[70];
        });
      });
    controller.forward();
  }
    
  @override
  
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: SafeArea(
        child: PageView(
          controller: PageController(
             initialPage: _initialPage,
          ),
          children: <Widget>[

            FadeTransition(
              opacity: animation,
              child: AnimatedContainer(
              duration: Duration(days: 0,hours: 0,minutes: 0,seconds: 4,milliseconds: 66,microseconds: 0),
              child: Center (
                child: Card(
                  color: Colors.lightGreen,
                  elevation: 1,
                  margin: EdgeInsets.all(2.0),
                  semanticContainer: true,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Text("Everlasting Joy", textAlign: TextAlign.center, style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.white),),
                      Image(
                          image:  AssetImage('images/b5.jpg'),
                          fit: BoxFit.fill,
                       ),
                    ],
                  ),
                )
                ),
              color: _color,
              curve: Curves.easeIn,
            
            ),
            ),
            Container(
              child: Center(
              child: Text("Features")
              ),
              color: Colors.amberAccent,
            ),
            Container(
              child: Center(
              child: Text("Favories")
              ),
              color: Colors.redAccent,
            ),
            Container(
              child: Center(
              child: Text("Retweets")
              ),
              color: Colors.blueGrey,
            ),

          ],
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  
  }
  dispose() {
    controller.dispose();
    super.dispose();
  }

}