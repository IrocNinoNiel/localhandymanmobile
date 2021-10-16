import 'package:flutter/material.dart';

class AppointmentForm extends StatefulWidget {
  @override
  AppointmentFormState createState() => AppointmentFormState();
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

class AppointmentFormState extends State<AppointmentForm> {
  final double _bottomSpace = 10;
  final _formkey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  String dropdownValue = 'One';

  @override
  void dispose() {
    // TODO: implement dispose
    passwordController.dispose();
    super.dispose();
  }

  _add() {
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
            decoration: txtDecoration('Enter Details'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Enter Details';
              }
              return null;
            },
            maxLines: 10,
            minLines: 5,
          ),
          SizedBox(
            height: _bottomSpace,
          ),
          TextFormField(
            decoration: txtDecoration('Date'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Enter Date';
              }
              return null;
            },
          ),
          SizedBox(
            height: _bottomSpace,
          ),
          TextFormField(
            decoration: txtDecoration('Hours To Book'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Choose Hour';
              }
              return null;
            },
          ),
          SizedBox(
            height: _bottomSpace,
          ),
          TextFormField(
            decoration: txtDecoration('Time'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Enter Date';
              }
              return null;
            },
          ),
          SizedBox(
            height: _bottomSpace,
          ),
          TextFormField(
            decoration: txtDecoration('Phone Number'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Enter Phone Number';
              }
              return null;
            },
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: _add,
              elevation: 5,
              child: Text('Add Appointment'),
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
