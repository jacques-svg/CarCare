import 'package:carcare/Views/addGarage.dart';
import 'package:carcare/Views/addVehicule.dart';
import 'package:flutter/material.dart';
//import 'package:gestion_notes/components/EventDelete.dart';
//import 'package:gestion_notes/controllers/evenementController.dart';
//import 'package:gestion_notes/pages/addEvent.dart';
import 'package:get/get.dart';

class ServicePage extends StatefulWidget {
  ServicePage({Key key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreen,
        title: Text("Services"),
      ),
      body: Container(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text('Services'),
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
