import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import '../Views/addVehicule.dart';

class VehiculesPage extends StatefulWidget {
  VehiculesPage({Key key}) : super(key: key);

  @override
  _VehiculesPageState createState() => _VehiculesPageState();
}

class _VehiculesPageState extends State<VehiculesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightGreen,
        title: Text("Vehicules"),
      ),
      body: Container(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text('Vehicules'),
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddVehicules()));
        },
        icon: Icon(Icons.add),
        backgroundColor: Colors.blue,
        label: Text("Ajouter"),
      ),
    );
  }
}
