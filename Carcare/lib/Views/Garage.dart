import 'package:carcare/Views/addGarage.dart';
import 'package:carcare/Views/addVehicule.dart';
import 'package:flutter/material.dart';
//import 'package:gestion_notes/components/EventDelete.dart';
//import 'package:gestion_notes/controllers/evenementController.dart';
//import 'package:gestion_notes/pages/addEvent.dart';
import 'package:get/get.dart';

class GaragePage extends StatefulWidget {
  GaragePage({Key key}) : super(key: key);

  @override
  _GaragePageState createState() => _GaragePageState();
}

class _GaragePageState extends State<GaragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreen,
        title: Text("Garages"),
      ),
      body: Container(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text('Garages'),
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddGarages()));
        },
        icon: Icon(Icons.add),
        backgroundColor: Colors.blue,
        label: Text("Ajouter"),
      ),
    );
  }
}
