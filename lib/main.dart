import 'package:book_app/HomePage.dart';
import 'package:book_app/pages/Account.dart';
import 'package:book_app/pages/BookList.dart';
import 'package:book_app/pages/Help.dart';
import 'package:book_app/pages/MyBooks.dart';
import 'package:book_app/pages/Settings.dart';
import 'package:book_app/pages/WriteBook.dart';
import 'package:flutter/material.dart';



void main() => runApp(new BookApp());

class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Book App',
        theme: new ThemeData(
            primaryColor: Colors.deepOrangeAccent,
            primaryColorDark: Colors.orange[900],
            accentColor: Colors.greenAccent),
        home: new HomePage(),
        routes: {
          '/account': (context) => Account(),
          '/mybooks': (context) => MyBooks(),
          '/booklist': (context) => BookList(),
          '/write': (context) => WriteBook(),
          '/settings': (context) => Settings(),
          '/help': (context) => Help(),
        });
  }
}

