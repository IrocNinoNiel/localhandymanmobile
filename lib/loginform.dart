import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() => LoginFormState();
}

txtDecoration(var str) {
  return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      hintText: str,
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 10),
      errorStyle: TextStyle(fontWeight: FontWeight.bold));
}

class LoginFormState extends State<LoginForm> {
  final double _bottomSpace = 10;
  final _formkey = GlobalKey<FormState>();
  bool _isAccepted = false;
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  _login() {
    if (_formkey.currentState.validate()) {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Logging in...')));
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: usernameController,
            decoration: txtDecoration('Username'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Enter Username';
              }
              return null;
            },
          ),
          SizedBox(
            height: _bottomSpace,
          ),
          TextFormField(
            controller: passwordController,
            decoration: txtDecoration('Password'),
            obscureText: true,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Enter Password';
              }
              return null;
            },
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: _login,
              elevation: 5,
              child: Text('Login'),
              color: Colors.pink[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text('Dont Have an Account?', style: TextStyle(color: Colors.black)),
          RaisedButton(
            color: Colors.purpleAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}
