import 'package:flutter/material.dart';
import 'package:localhandyman1/homepage.dart';
import 'dart:async';

import 'package:localhandyman1/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[100],
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
              child: Image.asset('assets/images/localsign.PNG',
                  width: 350, height: 200),
            ),
          ],
        ));
  }
}
