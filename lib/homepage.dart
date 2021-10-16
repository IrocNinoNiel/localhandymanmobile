import 'package:flutter/material.dart';
import 'package:localhandyman1/appointmentlist.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Local Handyman',
            style: TextStyle(
              color: Colors.blue[200],
            )),
        backgroundColor: Colors.pink[300],
        actions: <Widget>[
          FlatButton(
            textColor: Colors.black,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', (Route<dynamic> route) => false);
            },
            child: Icon(Icons.subdirectory_arrow_left),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          )
        ],
      ),
      body: AppointmentList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue[300],
      ),
    ); //Scafold
  }
}
