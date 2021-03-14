// import 'package:ecomerce/screens/login_screen.dart';

import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome.dart';
import 'package:flutter/material.dart';
import 'screens/login screen.dart';
import 'screens/signup screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';
    return MaterialApp(g
        title: appTitle,
        routes: {
          // LoginPage10.id: (context) => LoginPage10(),
          SignUp.id: (context) => SignUp(),
          // AwesomeDialogScreen.id: (context) => AwesomeDialogScreen(),
          LoginScreen.id: (context) => LoginScreen(),
        },
        initialRoute: LoginScreen.id);
  }
}
