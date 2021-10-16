import 'package:flutter/material.dart';

class RepairPage extends StatelessWidget {
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
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Date: ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '09-28-2021',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Details: ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Please Repair my roof',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Hour Limit: ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '3 Hours',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Time: ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '8 am',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Phone #: ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '09385768512',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Status: ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    RaisedButton(
                      color: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                      child: Text('Ongoing'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
