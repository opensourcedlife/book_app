import 'package:book_app/pages/Account.dart';
import 'package:book_app/pages/BookList.dart';
import 'package:book_app/pages/Help.dart';
import 'package:book_app/pages/MyBooks.dart';
import 'package:book_app/pages/Settings.dart';
import 'package:book_app/pages/WriteBook.dart';
import 'package:flutter/material.dart';

const String _AccountName = 'Faith Yummy';
const String _AccountEmail = 'info@opensourcedlife.org';
const String _AccountAbbr = 'FY';
const String _AppName = "Book App";
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
          child: new ListView(
              padding: const EdgeInsets.only(top: 0.0),
              children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: const Text(_AccountName),
              accountEmail: const Text(_AccountEmail),
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
              onTap: (){
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
            )
          ])),
      floatingActionButton: new FloatingActionButton(
        onPressed: _addBook(context),
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      appBar: new AppBar(
        title: new Text('$_AppName'),
      ),
      body: Container(
        child: SliderPage(),
      ),
    );
  }

  _onListTileTap(BuildContext context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Not Implemented'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

//add new book
_addBook(BuildContext context) {}

//home slider
class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Welcome!"),
    );
  }
}

