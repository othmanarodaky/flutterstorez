import 'package:flutter/material.dart';
import 'package:music1/screens/signup%20screen.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'registration_screen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class LoginScreen extends StatelessWidget {
  static const String id = '/LoginScreen';
  void showAlertDialogOnOkCallback(String title, String msg,
      DialogType dialogType, BuildContext context, VoidCallback onOkPress) {
    AwesomeDialog(
      context: context,
      animType: AnimType.TOPSLIDE,
      dialogType: dialogType,
      title: title,
      desc: msg,
      btnOkIcon: Icons.check_circle,
      btnOkColor: Colors.green.shade900,
      btnOkOnPress: onOkPress,
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -----------------------------------------
      /// Build main content with Stack widget.
      /// -----------------------------------------
      body: Stack(
        children: <Widget>[
          Container(
            height: 650,
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
                    [Colors.blue.shade200, Colors.purple.shade400],
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
            //TODO ?????? ?????????? ???????? ?????? ???????? ???????? ??????????
            children: <Widget>[
              Container(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /// -----------------------------------------
                    /// Header login text.
                    /// -----------------------------------------
                    Text(
                        //TODO ???????? ???????????? ???????? ????????????
                        "E-comer",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0)),

                    /// -----------------------------------------
                    /// shaped Card with TextField child with it for adding username .
                    /// -----------------------------------------
                    Card(
                      //TODO ???????????? ???????? ?????? usrname
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
                            suffixIcon: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                            hintText: "Username",
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
                      //TODO for text fild pasword
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
                        //TODO ?????? ???????? ???????????? ??on change ???? ????
                      ),
                    ),

                    /// -----------------------------------------
                    /// shaped Container with RaisedButton child with it for Submitting login data.
                    /// -----------------------------------------
                    Container(
                      //TODO for login
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.blue,
                        onPressed: () {
                          AwesomeDialog(
                              context: context,
                              animType: AnimType.LEFTSLIDE,
                              headerAnimationLoop: false,
                              dialogType: DialogType.SUCCES,
                              title: 'Succes',
                              desc:
                                  'The operation was successfully completed..................................',
                              btnOkIcon: Icons.check_circle,
                              onDissmissCallback: () {
                                Navigator.of(context).pushNamed(SignUp.id);
                                debugPrint('Dialog Dissmiss from callback');
                              }).show();
                        }, //TODO ?????? ???????? ?????????? ????log in
                        elevation: 11,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: Text("Login",
                            style: TextStyle(color: Colors.white70)),
                      ),
                    ),

                    /// -----------------------------------------
                    /// Forgot your password text.
                    /// -----------------------------------------
                    Text("Forgot your password?",
                        style: TextStyle(color: Colors.white))
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
                //TODO  ?????? ?????? listview
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("or, continue with"),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          /// -----------------------------------------
                          /// RaisedButton login through facebook auth.
                          /// -----------------------------------------
                          child: RaisedButton(
                            child: Text("Facebook"),
                            textColor: Colors.white,
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                            ),
                            onPressed: () {}, //TODO ???????? ???????? ???????? ?????????? ????????????
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          /// -----------------------------------------
                          /// RaisedButton login through Twitter auth.
                          /// -----------------------------------------
                          child: RaisedButton(
                            child: Text("Twitter"),
                            textColor: Colors.white,
                            color: Colors.indigo,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Dont have an account?"),

                        /// -----------------------------------------
                        /// FlatButton signUp .
                        /// -----------------------------------------
                        FlatButton(
                          child: Text("Sign up"),
                          textColor: Colors.blue,
                          onPressed: () {
                            Navigator.of(context).pushNamed(SignUp.id);
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
