import 'package:flutter/material.dart';

class AppointmentList extends StatefulWidget {
  @override
  AppointmentListState createState() => AppointmentListState();
}

class AppointmentListState extends State<AppointmentList> {
  final items = List<String>.generate(100, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(
              Icons.build,
              size: 50.0,
            ),
            title: Text('09-29-21'),
            onTap: () {
              Navigator.pushNamed(context, '/repair');
            },
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.build,
              size: 50.0,
            ),
            title: Text('09-23-21'),
            onTap: () {
              Navigator.pushNamed(context, '/repair');
            },
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.build,
              size: 50.0,
            ),
            title: Text('09-28-21'),
            onTap: () {
              Navigator.pushNamed(context, '/repair');
            },
            trailing: Icon(Icons.more_vert),
          ),
        )
      ],
    );
  }
}

//  ListView.builder(
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return Card(
//           child: ListTile(
//             leading: Icon(
//               Icons.build,
//               size: 50.0,
//             ),
//             title: Text('08-02-19'),
//             subtitle: Text('by User 3'),
// onTap: () {
//   Navigator.pushNamed(context, '/repair');
// },
//             // trailing: Icon(Icons.more_vert),
//           ),
//         );
//       },
//     );
