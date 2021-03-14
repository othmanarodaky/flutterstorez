import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

//===================================================

// This class uses awesome dialog Package
// Link to it :  https://pub.dev/packages/awesome_dialog

//===================================================

class AwesomeDialogScreen extends StatefulWidget {
  static const String id = '/AwesomeDialogScreen';

  @override
  _AwesomeDialogScreenState createState() => _AwesomeDialogScreenState();
}

class _AwesomeDialogScreenState extends State<AwesomeDialogScreen> {
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
      appBar: AppBar(),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: <Widget>[
            SizedBox(height: 60),

            //===========================
            //         Dialog 1
            //===========================
            AnimatedButton(
              text: 'Dialog 6',
              color: Colors.green,
              pressEvent: () {
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
                      debugPrint('Dialog Dissmiss from callback');
                    }).show();
              },
            ),

            SizedBox(height: 60),
          ])),
    );
  }
}
