import 'package:flutter/material.dart';
import 'package:localhandyman1/appointmentpage.dart';
import 'loginpage.dart';
import 'registrationpage.dart';
import 'homepage.dart';
import 'repairpage.dart';
import 'splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegistrationPage(),
        '/repair': (context) => RepairPage(),
        '/add': (context) => AppointmentPage(),
        '/home': (context) => HomePage()
      },
    );
  }
}
