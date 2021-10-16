import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  RegistrationFormState createState() => RegistrationFormState();
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

class RegistrationFormState extends State<RegistrationForm> {
  final double _bottomSpace = 10;
  final _formkey = GlobalKey<FormState>();
  bool _isAccepted = false;
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    passwordController.dispose();
    super.dispose();
  }

  _register() {
    if (_formkey.currentState.validate()) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Processing Data'),
        ),
      );
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
            decoration: txtDecoration('Name'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please EnterName';
              }
              return null;
            },
          ),
          SizedBox(
            height: _bottomSpace,
          ),
          TextFormField(
            decoration: txtDecoration('Email'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Enter Email';
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
              } else if (value.length < 8) {
                return 'Password Length must be More than 8';
              }
              return null;
            },
          ),
          SizedBox(
            height: _bottomSpace,
          ),
          TextFormField(
            decoration: txtDecoration('Re enter password'),
            obscureText: true,
            validator: (value) {
              print(passwordController.text);
              if (value.isEmpty || value.length < 8) {
                return 'Please Confirm your Password';
              } else if (value != passwordController.text) {
                return 'Password Dont match';
              }
              return null;
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                checkColor: Colors.white,
                value: _isAccepted,
                onChanged: (value) {
                  setState(() {
                    _isAccepted = value;
                  });
                },
              ),
              Text(
                'I Accept all terms of the agreement',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: _isAccepted ? _register : null,
              elevation: 5,
              child: Text('Register'),
              color: Colors.pink[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
            ),
          ),
        ],
      ),
    );
  }
}
