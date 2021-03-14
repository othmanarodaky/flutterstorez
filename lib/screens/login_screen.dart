// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// class LoginPage11 extends StatelessWidget {
//   static const String id = '/LoginPage11';
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Container(
//               width: width,
//               height: height,
//               padding: const EdgeInsets.all(5.0),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.indigoAccent, Colors.deepPurple],
//                 ),
//               ),
//               child: Column(
//                 children: <Widget>[
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Expanded(
//                       flex: 2,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: const Color(0xff7c94b6),
//                           image: const DecorationImage(
//                             image: NetworkImage(
//                                 'https://cdn5.vectorstock.com/i/thumb-large/22/49/isometric-smart-smartphone-online-shopping-concept-vector-21342249.jpg'),
//                             fit: BoxFit.cover,
//                           ),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       )),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: Column(
//                       children: [
//                         Text(
//                           "FlutterX UI",
//                           style: TextStyle(
//                               color: Colors.white70,
//                               fontSize: 24.0,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(height: 40.0),
//                         TextField(
//                           decoration: InputDecoration(
//                             contentPadding: const EdgeInsets.all(16.0),
//                             prefixIcon: Container(
//                                 padding: const EdgeInsets.only(
//                                     top: 16.0, bottom: 16.0),
//                                 margin: const EdgeInsets.only(right: 8.0),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(30.0),
//                                         bottomLeft: Radius.circular(30.0),
//                                         topRight: Radius.circular(30.0),
//                                         bottomRight: Radius.circular(10.0))),
//                                 child: Icon(
//                                   Icons.person,
//                                   color: Colors.lightBlue,
//                                 )),
//                             hintText: "enter your email",
//                             hintStyle: TextStyle(color: Colors.white54),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30.0),
//                                 borderSide: BorderSide.none),
//                             filled: true,
//                             fillColor: Colors.white.withOpacity(0.1),
//                           ),
//                         ),
//                         SizedBox(height: 10.0),
//                         TextField(
//                           decoration: InputDecoration(
//                             contentPadding: const EdgeInsets.all(16.0),
//                             prefixIcon: Container(
//                                 padding: const EdgeInsets.only(
//                                     top: 16.0, bottom: 16.0),
//                                 margin: const EdgeInsets.only(right: 8.0),
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(30.0),
//                                         bottomLeft: Radius.circular(30.0),
//                                         topRight: Radius.circular(30.0),
//                                         bottomRight: Radius.circular(10.0))),
//                                 child: Icon(
//                                   Icons.lock,
//                                   color: Colors.lightBlue,
//                                 )),
//                             hintText: "enter your password",
//                             hintStyle: TextStyle(color: Colors.white54),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(30.0),
//                                 borderSide: BorderSide.none),
//                             filled: true,
//                             fillColor: Colors.white.withOpacity(0.1),
//                           ),
//                           obscureText: true,
//                         ),
//                         SizedBox(height: 30.0),
//                         SizedBox(
//                           width: double.infinity,
//                           child: RaisedButton(
//                             color: Colors.white,
//                             textColor: Colors.lightBlue,
//                             padding: const EdgeInsets.all(20.0),
//                             child: Text("Login".toUpperCase()),
//                             onPressed: () {},
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30.0)),
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             FlatButton(
//                               textColor: Colors.white70,
//                               child: Text("Create Account".toUpperCase()),
//                               onPressed: () {},
//                             ),
//                             Container(
//                               color: Colors.white54,
//                               width: 2.0,
//                               height: 20.0,
//                             ),
//                             FlatButton(
//                               textColor: Colors.white70,
//                               child: Text("Forgot Password".toUpperCase()),
//                               onPressed: () {},
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   //SizedBox(height: 10.0),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
