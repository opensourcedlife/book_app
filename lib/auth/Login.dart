import 'package:book_app/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String tag = "login-ui";
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
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 64.0,
        child: Image.asset(
          "images/logo/avata.jpeg",
        ),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      validator: (input) {
        if (input.isEmpty) {
          return "Email address can not be empty!!";
        }
      },
      onSaved: (input) => _email = input,
      decoration: InputDecoration(
        hintText: "Email Address",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      validator: (input) {
        if (input.length < 6) {
          return "Password length should be greater than 8";
        }
      },
      onSaved: (input) => _password = input,
      decoration: InputDecoration(
        hintText: "Password",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final loginBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Theme.of(context).accentColor,
        elevation: 5,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: signIn,
          color: Theme.of(context).primaryColor,
          child: Text("Sign In", style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text("Don't have an account? Sign Up Here",
          style: TextStyle(color: Colors.black26)),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(
                height: 40.0,
              ),
              email,
              SizedBox(
                height: 24.0,
              ),
              password,
              SizedBox(
                height: 48.0,
              ),
              loginBtn,
              forgotLabel,
            ],
          ),
        ),
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
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()));
        }
      } catch (e) {
        print(e.message);
      }
    }
  }
}
