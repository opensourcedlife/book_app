import 'package:book_app/auth/Login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Book App Sign Up"),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[signUpForm(context)],
                  ),
                ])));
  }

  Form signUpForm(BuildContext context) {
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
              RaisedButton(
                onPressed: createAccount,
                child: Text("Create Account",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                elevation: 10,
                animationDuration: Duration(seconds: 3),
                color: Theme.of(context).accentColor,
                colorBrightness: Theme.of(context).accentColorBrightness,
              ),
              RaisedButton(
                onPressed: signIn,
                child: Text("Sign In Here",
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

  Future<void> createAccount() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();


        print("User Created Successfully");
        Navigator.of(context).pop();
        // Navigator.pushReplacement(
        //     context, MaterialPageRoute(builder: (context) => Welcome()));

    }
  }

  void signIn() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => Login(), fullscreenDialog: true));
  }
}
