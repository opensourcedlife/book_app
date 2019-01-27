import 'package:book_app/HomePage.dart';
import 'package:book_app/auth/Login.dart';
import 'package:book_app/pages/Account.dart';
import 'package:book_app/pages/BookList.dart';
import 'package:book_app/pages/Help.dart';
import 'package:book_app/pages/MyBooks.dart';
import 'package:book_app/pages/Settings.dart';
import 'package:book_app/pages/WriteBook.dart';
import 'package:flutter/material.dart';

void main() => runApp(BookApp());

class BookApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<BookApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Book App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.deepOrangeAccent,
            primaryColorDark: Colors.orange[900],
            accentColor: Colors.greenAccent),
        home: Login(),
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
