import 'package:book_app/HomePage.dart';
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
  var _errorMessage;
  bool visibility;
  bool hideLayout;

  @override
  void initState() {
    super.initState();
    _errorMessage = "";
    visibility = false;
    hideLayout = true;
  }

  @override
  Widget build(BuildContext context) {
    final logo = hideLayout
        ? Hero(
            tag: 'hero',
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 64.0,
              child: Image.asset(
                "images/logo/avata.jpeg",
              ),
            ),
          )
        : Container();

    final email = hideLayout
        ? TextFormField(
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
          )
        : Container();

    final password = hideLayout
        ? TextFormField(
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
          )
        : Container();

    final loginBtn = hideLayout
        ? Padding(
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
          )
        : Container();

    final forgotLabel = hideLayout
        ? FlatButton(
            child: Text("Don't have an account? Sign Up",
                style: TextStyle(color: Colors.black26)),
            onPressed: () {},
          )
        : Container();

    final progress = visibility ? LinearProgressIndicator() : Container();

    final loadingMessage = visibility
        ? Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
                "Authenticating with Cipal Telecoms Cloud. Please wait a moment..."))
        : Container();

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
                height: 30.0,
              ),
              progress,
              loadingMessage,
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
      setState(() {
        hideLayout = false;
        visibility = true;
      });

//      try {
//        FirebaseUser user = await FirebaseAuth.instance
//            .signInWithEmailAndPassword(email: _email, password: _password);
//        if (user.getIdToken() != null) {
//          Navigator.of(context).pushReplacement(
//              MaterialPageRoute(builder: (context) => HomePage()));
//        }
//      } catch (e) {
//        setState(() {
//          hideLayout = true;
//
//          _errorMessage = e.message;
//          _errorDialog("Authentication Error", e.message, "Okay Cool");
//          visibility = false;
//        });
//      }
    }
  }

  Future<void> _errorDialog(var title, var body, var btn) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(body),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(btn),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
