import 'package:book_app/auth/Login.dart';
import 'package:book_app/loaders/Main.dart';
import 'package:book_app/pages/Account.dart';
import 'package:book_app/pages/BookList.dart';
import 'package:book_app/pages/Help.dart';
import 'package:book_app/pages/MyBooks.dart';
import 'package:book_app/pages/Settings.dart';
import 'package:book_app/pages/WriteBook.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
 // Future<FirebaseUser> user = FirebaseAuth.instance.currentUser();
  var _AccountName = "Faith Yummy";
  var _AccountEmail = 'info@opensourcedlife.org';
  var _AccountAbbr = 'FY';
  var _AppName = "Book App";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: DraweList(context),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _addBook(false),
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      appBar: new AppBar(
        title: new Text('$_AppName'),
      ),
      body: Main(),
    );
  }

  ListView DraweList(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.only(top: 0.0),
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text(_AccountName),
            accountEmail: Text(_AccountEmail),
            currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown, child: new Text(_AccountAbbr)),
          ),
          new ListTile(
              leading: new Icon(Icons.person),
              title: new Text('Account'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __) {
                  return new Account();
                }, transitionsBuilder:
                        (_, Animation<double> animation, __, Widget child) {
                  return new FadeTransition(opacity: animation, child: child);
                }));
              }),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.add),
            title: new Text('Write Book'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (BuildContext context, _, __) {
                return new WriteBook();
              }, transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                return new FadeTransition(opacity: animation, child: child);
              }));
            },
          ),
          new ListTile(
            leading: new Icon(Icons.list),
            title: new Text('Books List'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (BuildContext context, _, __) {
                return new BookList();
              }, transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                return new FadeTransition(opacity: animation, child: child);
              }));
            },
          ),
          new ListTile(
            leading: new Icon(Icons.book),
            title: new Text('My Books'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (BuildContext context, _, __) {
                return new MyBooks();
              }, transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                return new FadeTransition(opacity: animation, child: child);
              }));
            },
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text('Settings'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (BuildContext context, _, __) {
                return new Settings();
              }, transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                return new FadeTransition(opacity: animation, child: child);
              }));
            },
          ),
          new ListTile(
            leading: new Icon(Icons.help),
            title: new Text('Help & feedback'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (BuildContext context, _, __) {
                return new Help();
              }, transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                return new FadeTransition(opacity: animation, child: child);
              }));
            },
          ),
          new ListTile(
            leading: new Icon(Icons.exit_to_app),
            title: new Text('Logout'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (BuildContext context, _, __) {
                return new Login();
              }, transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                return new FadeTransition(opacity: animation, child: child);
              }));
            },
          )
        ]);
  }

  _addBook(bool added) {
    setState(() {});
  }
}
