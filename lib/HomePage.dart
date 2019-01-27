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
  var _accountName = "Faith Yummy";
  var _accountEmail = 'info@opensourcedlife.org';
  var _accountAbbr = 'FY';
  var _appName = "Book App";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: draweList(context),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).accentColor,
      ),
      appBar: new AppBar(
        title: new Text('$_appName'),
        actions: <Widget>[
          new IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: Main(),
    );
  }

  ListView draweList(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.only(top: 0.0),
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text(_accountName),
            accountEmail: Text(_accountEmail),
            currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown, child: new Text(_accountAbbr)),
          ),
          new ListTile(
              leading: new Icon(
                Icons.person,
                color: Theme.of(context).primaryColor,
              ),
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
            leading: new Icon(
              Icons.add,
              color: Theme.of(context).primaryColor,
            ),
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
            leading: new Icon(
              Icons.list,
              color: Theme.of(context).primaryColor,
            ),
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
            leading: new Icon(
              Icons.book,
              color: Theme.of(context).primaryColor,
            ),
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
            leading: new Icon(
              Icons.settings,
              color: Theme.of(context).primaryColor,
            ),
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
            leading: new Icon(
              Icons.help,
              color: Theme.of(context).primaryColor,
            ),
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
            leading: new Icon(
              Icons.exit_to_app,
              color: Theme.of(context).primaryColor,
            ),
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
}
