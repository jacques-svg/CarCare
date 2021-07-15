import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../FadeAnimation.dart';
import '../SignupScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:new_version/new_version.dart';
import 'package:carcare/services/api_manager.dart';
import 'package:carcare/Screens/home.dart';
import 'package:carcare/utils/constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();

    // Instantiate NewVersion manager object (Using GCP Console app as example)
    final newVersion = NewVersion(
      iOSId: 'com.google.Vespa',
      androidId: 'com.example.carcare',
    );

    newVersion.showAlertIfNecessary(context: context);
  }

  var email;
  var password;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  // pour valider le formulaire
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.orange[900],
          Colors.orange[800],
          Colors.orange[400]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Connexion",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Bienvenue carcare",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        FadeAnimation(
                            1.4,
                            Column(
                              children: <Widget>[
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            EvaIcons.emailOutline,
                                            color: Colors.black26,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: new BorderSide(
                                                  color: Colors.black12),
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          labelText: "E-Mail",
                                          hintStyle: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                          labelStyle: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: new BorderSide(
                                                  color: Colors.black12),
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                        ),
                                        controller: _emailController,
                                        validator: (value) {
                                          if (value == null && value.isEmpty) {
                                            return "Email est obligatoire";
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      TextFormField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            EvaIcons.lockOutline,
                                            color: Colors.black26,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: new BorderSide(
                                                  color: Colors.black12),
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          contentPadding: EdgeInsets.only(
                                              left: 10.0, right: 10.0),
                                          labelText: "Mot de passe",
                                          hintStyle: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                          labelStyle: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: new BorderSide(
                                                  color: Colors.black12),
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                        ),
                                        controller: _passwordController,
                                        validator: (value) {
                                          if (value == null && value.isEmpty) {
                                            return "Mot de passe est obligatoire";
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FadeAnimation(
                                              1.5,
                                              Text(
                                                "Tu n'as pas de compte?",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 5.0),
                                          ),
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.pushReplacement(
                                                    context,
                                                    new MaterialPageRoute(
                                                        builder: (context) =>
                                                            new SignupPage()));
                                              },
                                              child: Text(
                                                "Creer un",
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      FadeAnimation(
                                          1.6,
                                          InkWell(
                                              onTap: () async {
                                                _submitLogin();
                                              },
                                              child: new Container(
                                                height: 50,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 50),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: Colors.orange[900]),
                                                child: Center(
                                                  child: Text(
                                                    "Se connecter",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ))),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      FadeAnimation(
                                          1.7,
                                          Text(
                                            "Se connectez avec",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: FadeAnimation(
                                                1.8,
                                                Container(
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      color: Colors.blue),
                                                  child: Center(
                                                    child: Text(
                                                      "Facebook",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Expanded(
                                            child: FadeAnimation(
                                                1.9,
                                                Container(
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: Colors.green,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Google",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _submitLogin() async {
    if (_formKey.currentState.validate()) {
      //add progress bar
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext dc) {
          return createProgressDialog('processing_login', context);
        },
      );
      print(_emailController.text);
      print(_passwordController.text);
      String message = null;
      message = await API_Manager()
          .login(_emailController.text, _passwordController.text);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString("token");

      if (token != null) {
        Navigator.of(context, rootNavigator: true).pop();
        await API_Manager.deleteToken();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        if (message != null) {
          Navigator.of(context, rootNavigator: true).pop();

          createSnackBar(message, context, Colors.red);
        }
      }
    } else {
      createSnackBar('email et mot de passe obligatoire ', context, Colors.red);
    }
  }
}
