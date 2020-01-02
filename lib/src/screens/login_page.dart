import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:reservation_app/src/models/api_services.dart';
import 'package:reservation_app/src/screens/menu_page.dart';
import 'package:reservation_app/src/widgets/static_elt.dart';
import 'package:flutter/material.dart';


class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final userL = TextEditingController();
  final passL = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          // padding: EdgeInsets.all(6.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 140.0,
              ),
              Container(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 90.0,
                  height: 90.0,
                ),
              ),
              Container(
                child: Image.asset(
                  "assets/images/moonsnstars.png",
                  width: 250.0,
                  height: 90.0,
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                child: TextField(
                  controller: userL,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,width: 6
                          ),
                          borderRadius: BorderRadius.circular(6.0))),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MyMain()),
                      (Route route) => false);
                },
                /*if (userL.text.isEmpty && passL.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Erreur"),
                              content: Text("Champ d'entré vide !"),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Ok"))
                              ],
                            ));
                    return;
                  }
                  else {
                    final usr = ApiServices.getUser();
                    if(usr == null){

                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Erreur"),
                            content: Text("Erreur provenant de la connexion !"),
                            actions: <Widget>[
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ok"))
                            ],
                          ));
                      return;
                    } else {
                      final userWithEaP = usr.any((u) => u['name'] == userL.text && u['psswrd'] == passL.text);
                    }
                  }
                },*/

                child: Container(
                  margin: EdgeInsets.all(6.0),
                  height: 50.0,
                  alignment: Alignment.center,
                  width: 320.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.ButtomColor,
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Image.asset(
                  "assets/images/Google.png",
                  width: 320.0,
                  height: 50.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
        );
  }
}
