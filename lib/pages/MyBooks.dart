import 'package:book_app/frag/Completed.dart';
import 'package:book_app/frag/Favorites.dart';
import 'package:book_app/frag/Reading.dart';
import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.library_books),
            title: new Text('Reading'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            title: new Text('Favorites'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_all), title: Text('Completed'))
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
