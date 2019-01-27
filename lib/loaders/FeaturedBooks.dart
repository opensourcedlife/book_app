import 'package:flutter/material.dart';

class FeaturedBooks extends StatefulWidget {
  _FeaturedBooksState createState() => _FeaturedBooksState();
}

class _FeaturedBooksState extends State<FeaturedBooks> {
  var featuredList = [
    {
      "name": "Im A Developer",
      "author": "ElectronSZ Inc.",
      "released": "Jun 2018",
      "image": "images/featured/cov1.jpg",
    },
    {
      "name": "Born With Love",
      "author": "Mduduzi Mabuza.",
      "released": "Feb 2019",
      "image": "images/featured/cov3.jpg",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: featuredList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index){
          return SingleBook(
              name: featuredList[index]['name'],
              author: featuredList[index]['author'],
              image: featuredList[index]['image'],
              released: featuredList[index]['released'],
          );
        },
    );
  }
}

class SingleBook extends StatelessWidget {
  final name;
  final author;
  final released;
  final image;

  SingleBook({this.name,this.image,this.author,this.released});

  @override
  Widget build(BuildContext context) {
    return  Card(
        child: Hero(
          tag: name,
          child: Material(
            child: InkWell(
              onTap: (){},
              child: GridTile(
                child: Image.asset(image,
                fit: BoxFit.cover,),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    title: Text(name),
                    subtitle: Text(author),
                    trailing: CircleAvatar(
                      radius: 15.0,
                      backgroundColor:  Theme.of(context).primaryColor,
                      child: Icon(Icons.star, color: Colors.white,),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}