import 'package:flutter/material.dart';
import 'FadeAnimation.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'main.dart';

class SignupPage extends StatelessWidget {

  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400]
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Register Now!", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                              color: Color.fromRGBO(225, 95, 27, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10)
                            )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    if(value.isNotEmpty)
                                        email = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Nom",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    if(value.isNotEmpty)
                                        email = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Prenom",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                               Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    if(value.isNotEmpty)
                                        email = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Nom d'utilisateur",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    if(value.isNotEmpty)
                                        email = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  onChanged: (value) {
                                    if(value.isNotEmpty)
                                        email = value;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Contact",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                               Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  onChanged:(value){
                                    if(value.isNotEmpty)
                                      password = value;
                                  },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Localisation",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                    
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  onChanged:(value){
                                    if(value.isNotEmpty)
                                      password = value;
                                  },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Mot de passe",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                    
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )),
                        SizedBox(height: 40,),
                        FadeAnimation(1.6,
                        InkWell (
                          onTap:() async {
                              Navigator.pushReplacement(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new LoginPage())); 
                            Loader.show(
                            context,
                            progressIndicator: CircularProgressIndicator(
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
                            color: Colors.orange[900]
                          ),
                          child: Center(
                            child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ))),
                        SizedBox(height: 20,),
                        FadeAnimation(1.6,
                        InkWell (
                          onTap:() async {
                              Navigator.pushReplacement(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new LoginPage())); 
                            Loader.show(
                            context,
                            progressIndicator: CircularProgressIndicator(
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
                            color: Colors.orange[900]
                          ),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ))),
                        SizedBox(height: 50,),
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