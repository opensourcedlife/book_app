import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Colors.transparent,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            Category(image: "images/category/romance.png", name: "Romance",),
            Category(image: "images/category/fiction.png", name: "Fiction",),
            Category(image: "images/category/tech.png", name: "Tech",),
            Category(image: "images/category/artificial.png", name: "Robots",),
            Category(image: "images/category/business.png", name: "Business",),
            Category(image: "images/category/farming.png", name: "Farming",),
          
        ],
      ),
    );
  }
}

class Category extends StatelessWidget{
  final String image;
  final String name;

  Category({this.image,this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
          title: Image.asset(image,
          width: 100.0,
          height: 50.0,),
          subtitle:Container(
            alignment: Alignment.topCenter,
            child: Text(name,style: TextStyle(color: Colors.black87,)),
            ),
          ) ,
        ),
      ),
      
    );
  }
}

