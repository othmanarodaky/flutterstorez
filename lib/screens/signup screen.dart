import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SignUp extends StatelessWidget {
  static const String id = '/SignUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -----------------------------------------
      /// Build main content with Stack widget.
      /// -----------------------------------------
      body: Stack(
        children: <Widget>[
          Container(
            height: 850,
            child: RotatedBox(
              quarterTurns: 2,

              /// -----------------------------------------
              /// WaveWidget for background shape animation.
              /// -----------------------------------------
              child: WaveWidget(
                /// -----------------------------------------
                /// Set up all configerations with duration and colors.
                /// -----------------------------------------
                config: CustomConfig(
                  gradients: [
                    [Colors.deepPurple, Colors.purple.shade200],
                    [Colors.blue.shade200, Colors.black26],
                  ],
                  durations: [19440, 10800],
                  heightPercentages: [0.20, 0.15],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),
                waveAmplitude: 0,
                size: Size(
                  double.infinity,
                  double.infinity,
                ),
              ),
            ),
          ),

          /// -----------------------------------------
          /// Build scrollable content with ListView widget.
          /// -----------------------------------------
          ListView(
            children: <Widget>[
              Container(
                height: 566,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /// -----------------------------------------
                    /// Header login text.
                    /// -----------------------------------------
                    Text("Rigster",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0)),

                    /// -----------------------------------------
                    /// shaped Card with TextField child with it for adding username .
                    /// -----------------------------------------
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            // suffixIcon: Icon(
                            //   Icons.check_circle,
                            //   color: Colors.green,
                            // ),
                            hintText: "Enter Username",
                            hintStyle: TextStyle(color: Colors.black26),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0)),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.blue,
                            ),
                            // suffixIcon: Icon(
                            //   Icons.check_circle,
                            //   color: Colors.green,
                            // ),
                            hintText: "Enter Your Email",
                            hintStyle: TextStyle(color: Colors.black26),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0)),
                      ),
                    ),

                    /// -----------------------------------------
                    /// shaped Card with TextField child with it for adding Password .
                    /// -----------------------------------------
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.black26,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0)),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue,
                            ),
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(
                              color: Colors.black26,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0)),
                      ),
                    ),

                    /// -----------------------------------------
                    /// shaped Container with RaisedButton child with it for Submitting login data.
                    /// -----------------------------------------
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.blue,
                        onPressed: () {},
                        elevation: 11,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: Text("Sign Up",
                            style: TextStyle(color: Colors.white70)),
                      ),
                    ),

                    /// -----------------------------------------
                    /// Forgot your password text.
                    /// -----------------------------------------
                    // Text("Forgot your password?",
                    //     style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),

              /// -----------------------------------------
              /// Aligned content to bottom of parent.
              /// -----------------------------------------
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Do you have an account?"),

                        /// -----------------------------------------
                        /// FlatButton signUp .
                        /// -----------------------------------------
                        FlatButton(
                          child: Text("Sign in"),
                          textColor: Colors.blue,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
