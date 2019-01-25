import 'package:book_app/HomePage.dart';
import 'package:book_app/auth/Register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Book App Login"),
        ),
        body: SafeArea(
            bottom: true,
            top: true,
            left: true,
            right: true,
            child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10.0,
                children: <Widget>[
                  loginTopLogo(context),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: signInForm(context),
                      ),
                    ],
                  ),
                ])));
  }

  Form signInForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (input) {
              if (input.isEmpty) {
                return "Email Address Can Not Be Empty!!";
              }
            },
            onSaved: (input) => _email = input,
            decoration: InputDecoration(
              labelText: "Your Email Address",
            ),
          ),
          TextFormField(
            validator: (input) {
              if (input.length < 6) {
                return "Password length should be greater than 8";
              }
            },
            onSaved: (input) => _password = input,
            decoration: InputDecoration(
              labelText: "Your Password",
            ),
            obscureText: true,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                child: RaisedButton(
                  onPressed: signIn,
                  child: Text("Sign In",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  elevation: 10,
                  animationDuration: Duration(seconds: 3),
                  color: Theme.of(context).accentColor,
                  colorBrightness: Theme.of(context).accentColorBrightness,
                ),
                padding: EdgeInsets.only(top: 20.0, bottom: 1.0),
              ),
              RaisedButton(
                onPressed: signUp,
                child: Text("Create Account",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                elevation: 10,
                animationDuration: Duration(seconds: 3),
                color: Theme.of(context).accentColor,
                colorBrightness: Theme.of(context).accentColorBrightness,
              )
            ],
          )
        ],
      ),
    );
  }

  Padding loginTopLogo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
      child: Container(
        height: 150.0,
        color: Theme.of(context).accentColor,
      ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        FirebaseUser user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        if (user.getIdToken() != null) {
          Navigator.of(context).push( MaterialPageRoute(builder: (context) => HomePage()));
        }
      } catch (e) {
        print(e.message);
      }
    }
  }

  void signUp() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => Register(), fullscreenDialog: true));
  }
}
