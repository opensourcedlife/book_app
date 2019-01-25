import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String tag = "login-ui";
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
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
      decoration: InputDecoration(
        hintText: "Password",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final loginBtn = Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.circular(32.0),
              shadowColor: Theme.of(context).accentColor,
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                elevation: 5.0,
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Text("Sign In", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ));

    final forgotLabel = FlatButton(
      child: Text("Forgort Password", style: TextStyle(color: Colors.black26)),
      onPressed: () {},
    );

    final signUp = FlatButton(
      child: Text("Don't have account? Sign up here",
          style: TextStyle(color: Colors.black26)),
      onPressed: () {},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(
              height: 48.0,
            ),
            email,
            SizedBox(
              height: 24.0,
            ),
            password,
            loginBtn,
            signUp,
            forgotLabel,
          ],
        ),
      ),
    );
  }
}
