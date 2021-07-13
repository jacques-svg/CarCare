import 'package:flutter/material.dart';
import 'FadeAnimation.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'main.dart';
import 'Views/login.dart';

// ignore: must_be_immutable
class SignupPage extends StatelessWidget {
  var email;
  var password;
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
                        "Creation de compte!",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
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
                          height: 15,
                        ),
                        FadeAnimation(
                            1.4,
                            Column(
                              children: <Widget>[
                                TextField(
                                  onChanged: (value) {
                                    if (value.isNotEmpty) email = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Nom",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.more_rounded,
                                      color: Colors.black26,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.black12),
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.white10),
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    onChanged: (value) {
                                      if (value.isNotEmpty) email = value;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Prenom",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    onChanged: (value) {
                                      if (value.isNotEmpty) email = value;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Nom d'utilisateur",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    onChanged: (value) {
                                      if (value.isNotEmpty) email = value;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    onChanged: (value) {
                                      if (value.isNotEmpty) email = value;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Contact",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    onChanged: (value) {
                                      if (value.isNotEmpty) password = value;
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Localisation",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    onChanged: (value) {
                                      if (value.isNotEmpty) password = value;
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Mot de passe",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.6,
                            InkWell(
                                onTap: () async {
                                  Navigator.pushReplacement(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              new LoginPage()));
                                  Loader.show(
                                    context,
                                    progressIndicator:
                                        CircularProgressIndicator(
                                      backgroundColor: Colors.red,
                                    ),
                                  );

                                  Future.delayed(Duration(seconds: 1), () {
                                    Loader.hide();
                                  });
                                },
                                child: new Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.orange[900]),
                                  child: Center(
                                    child: Text(
                                      "S'inscrire",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ))),
                        SizedBox(
                          height: 15,
                        ),
                        FadeAnimation(
                            1.6,
                            InkWell(
                                onTap: () async {
                                  Navigator.pushReplacement(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              new LoginPage()));
                                  Loader.show(
                                    context,
                                    progressIndicator:
                                        CircularProgressIndicator(
                                      backgroundColor: Colors.red,
                                    ),
                                  );

                                  Future.delayed(Duration(seconds: 1), () {
                                    Loader.hide();
                                  });
                                },
                                child: new Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.orange[900]),
                                  child: Center(
                                    child: Text(
                                      "Se connecter",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ))),
                        SizedBox(
                          height: 50,
                        ),
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
}
