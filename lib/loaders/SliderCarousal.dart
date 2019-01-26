import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class SliderCarousal extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SliderCarousalState();
      }
    
    }
    
  class _SliderCarousalState  extends State<SliderCarousal>{
  @override
  Widget build(BuildContext context) {
   
    return Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 3),
      images: [
        AssetImage('images/slider/slide1.jpg'),
        AssetImage('images/slider/slide2.jpg'),
        AssetImage('images/slider/slide3.jpg'),

      ],
        dotColor: Theme.of(context).accentColor,
    ),
  );
  }
}