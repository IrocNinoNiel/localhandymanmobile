import 'package:flutter/material.dart';
import 'registrationform.dart';

class RegistrationPage extends StatelessWidget {
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
          child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                Padding(
                      padding: EdgeInsets.all(15),
                      child: Image.asset('assets/images/signup.PNG',width:300,height:200),
                ),
                Center(
                  child: Container(
                      child: RegistrationForm(),
                      padding: EdgeInsets.all(15),
                    ),
                )//Center
              ]
          )
        )
      );
  }
}
