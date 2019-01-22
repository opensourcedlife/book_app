import 'package:book_app/frag/Completed.dart';
import 'package:book_app/frag/Favorites.dart';
import 'package:book_app/frag/Reading.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

const String _widgetName = "My Books";

//my books
class MyBooks extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyBooksState();
  }
}

class _MyBooksState extends State<MyBooks> {
  int _currentIndex = 0;
  final List<Widget> _children = [Reading(), Favorites(), Completed()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_widgetName),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar:  FancyBottomNavigation(
      tabs: [
        TabData(iconData: Icons.library_books, title: "Reading"),
        TabData(iconData: Icons.favorite, title: "Favorites"),
        TabData(iconData: Icons.done_all, title: "Completed")
    ],
    onTabChangedListener: (position) {
        setState(() {
        _currentIndex = position;
        });
    },
)
);
  }

  
}
