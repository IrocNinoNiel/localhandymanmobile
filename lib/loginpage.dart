import 'package:flutter/material.dart';
import 'loginform.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('Local Handyman', 
              style:TextStyle(color: Colors.blue[200],)
            ),
          backgroundColor: Colors.pink[300],
        ),
        body: SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                Padding(
                      padding: EdgeInsets.all(15),
                      child: Image.asset('assets/images/iconic.PNG',width:300,height:200),
                ),
                Center(
                  child: Container(
                      child: LoginForm(),
                      padding: EdgeInsets.all(15),
                    ),
                )//Center
              ]
          )
        )
      );
  }
}
