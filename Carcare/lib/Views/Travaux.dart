import 'package:carcare/Views/addGarage.dart';
import 'package:carcare/Views/addTravaux.dart';
import 'package:carcare/Views/addVehicule.dart';
import 'package:flutter/material.dart';
//import 'package:gestion_notes/components/EventDelete.dart';
//import 'package:gestion_notes/controllers/evenementController.dart';
//import 'package:gestion_notes/pages/addEvent.dart';
import 'package:get/get.dart';

class TravauxPage extends StatefulWidget {
  TravauxPage({Key key}) : super(key: key);

  @override
  _TravauxPageState createState() => _TravauxPageState();
}

class _TravauxPageState extends State<TravauxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreen,
        title: Text("Travaux"),
      ),
      body: ListView(children: [
        Container(
          height: 60,
          width: 100,
          child: Card(
            color: Colors.lightBlueAccent,
            elevation: 10,
            child: Center(
              child: Text("0", style: TextStyle(fontSize: 30)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            "liste des Travaux",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddTravaux()));
        },
        icon: Icon(Icons.add),
        backgroundColor: Colors.blue,
        label: Text("Ajouter"),
      ),
    );
  }
}
