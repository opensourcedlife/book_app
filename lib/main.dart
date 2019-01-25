import 'package:book_app/SplashScreen.dart';
import 'package:book_app/pages/Account.dart';
import 'package:book_app/pages/BookList.dart';
import 'package:book_app/pages/Help.dart';
import 'package:book_app/pages/MyBooks.dart';
import 'package:book_app/pages/Settings.dart';
import 'package:book_app/pages/WriteBook.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(BookApp());

class BookApp extends StatefulWidget {
  final FirebaseUser user;

  const BookApp({Key key, this.user}) : super(key: key);

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
        theme: new ThemeData(
            primaryColor: Colors.deepOrangeAccent,
            primaryColorDark: Colors.orange[900],
            accentColor: Colors.greenAccent),
        home: new SplashScreen(),
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
