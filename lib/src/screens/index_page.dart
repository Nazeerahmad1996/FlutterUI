import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:reservation_app/src/screens/login_page.dart';
import 'package:reservation_app/src/widgets/static_elt.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:pinput/pin_put/pin_put.dart';

class MyIndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var floatingActionButton;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Container(
                transform: Matrix4.translationValues(-10, 0, 0.0),
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.ButtomColor,
                  size: 45.0,
                  semanticLabel: 'Back',
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                child: Text(
                  "Almost Done",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                "We have send a verification code to your email. Please enter the verification code send to you.",
                style: TextStyle(
                  color: Colors.codeSendText,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  height: 1.4,
                ),
              ),
              // Container(
              //   margin: EdgeInsets.all(6.0),
              //   child: PinEntryTextField(
              //     fields: 6,
              //     showFieldAsBox: true,
              //     fieldWidth: 50.0,
              //     fontSize: 22.0,
              //     // fieldWidth: 60.0,
              //     onSubmit: (String pin) {
              //       showDialog(
              //           context: context,
              //           builder: (context) {
              //             return AlertDialog(
              //               title: Text("Pin"),
              //               content: Text('Pin entered is $pin'),
              //             );
              //           }); //end showDialog()
              //     }, // end onSubmit
              //   ),
              // ),
              Center(
                child: PinPut(
                  fieldsCount: 6,
                  actionButtonsEnabled: false,
                  textStyle: TextStyle(
                      color: Colors.ButtomColor,
                      height: 1.5,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500),
                  onSubmit: (String pin) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Pin"),
                            content: Text('Pin entered is $pin'),
                          );
                        }); //end showDia
                  },
                ),
              ),

              // Container(
              //   alignment: Alignment.center,
              //   child: Image.asset(
              //     "assets/images/bus.png",
              //     width: 180.0,
              //     height: 180.0,
              //   ),
              // ),
              // SizedBox(
              //   height: 8.0,
              // ),
              // Text(
              //   "Djangal Express",
              //   style: TextStyle(
              //       color: Colors.black, fontFamily: "Schyler", fontSize: 30.0),
              //   textAlign: TextAlign.center,
              // ),
              // Container(
              //   margin: EdgeInsets.all(20.0),
              //   child: Text(
              //     "Cette application vous permettra de mieux préparer vos voyages\ntout en achetant ou en conservant vos billets !",
              //     style: TextStyle(fontSize: 13.0, letterSpacing: 0.1),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => MyLoginPage()));
              //   },
              //   child: Container(
              //     width: 300.0,
              //     alignment: Alignment.center,
              //     height: 45.0,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(20.0),
              //         color: Colors.blueGrey),
              //     child: Center(
              //       child: Text(
              //         "Continuez",
              //         style: TextStyle(
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.keyboard_arrow_right),
        backgroundColor: Colors.ButtomColor,
      ),
    );
  }
}
