import 'package:carcare/Views/Evenements.dart';
import 'package:carcare/Views/Garage.dart';
import 'package:carcare/Views/Travaux.dart';
import '../Views/Service.dart';
import 'package:carcare/Views/Vehicule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:carcare/Views/login.dart';
import '../FadeAnimation.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text("CarCare")),
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(5.0, 20, 5, 5),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            primary: false,
            children: [
              FadeAnimation(
                1,
                Card(
                  child: InkWell(
                    onTap: () {
                      //_coursController.fetchUserCourses();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => VehiculesPage()));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/car.jpeg",
                          height: 123,
                        ),
                        Text("Vehicules")
                      ],
                    ),
                  ),
                ),
              ),

              FadeAnimation(
                1.2,
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GaragePage()));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/garage.jpeg",
                          height: 123,
                        ),
                        Text("Garage")
                      ],
                    ),
                  ),
                ),
              ),
              FadeAnimation(
                1.4,
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ServicePage()));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/service.jpeg",
                          height: 123,
                        ),
                        Text("Services")
                      ],
                    ),
                  ),
                ),
              ),
              FadeAnimation(
                1.6,
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TravauxPage()));
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/travaux.jpeg",
                          height: 123,
                        ),
                        Text("Travaux")
                      ],
                    ),
                  ),
                ),
              ),
              // Obx(()=>Text((userController.token==null)?'null':userController.token.value))
            ],
          )),
      drawer: Drawer(
        child: FadeAnimation(
          1,
          ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Jacques'),
                accountEmail: Text('soromoudorojacques38@gmail.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      EvaIcons.personOutline,
                      color: Colors.lightGreen,
                    )),
                decoration: BoxDecoration(color: Colors.lightGreen),
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.home,
                  color: Colors.orange,
                ),
                title: Text("Accueil"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.person,
                  color: Colors.orange,
                ),
                title: Text("Mon compte"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.calendar,
                  color: Colors.orange,
                ),
                title: Text("Evenements"),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => EvenementPage()));
                },
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.settings,
                  color: Colors.orange,
                ),
                title: Text("A propos"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  EvaIcons.logOut,
                  color: Colors.orange,
                ),
                title: Text("Deconnexion"),
                onTap: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setString('token', null);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
