import 'package:flutter/material.dart';
//import 'package:gestion_notes/components/EventDelete.dart';
//import 'package:gestion_notes/controllers/evenementController.dart';
//import 'package:gestion_notes/pages/addEvent.dart';
import 'package:get/get.dart';

class EvenementPage extends StatefulWidget {
  EvenementPage({Key key}) : super(key: key);

  @override
  _EvenementPageState createState() => _EvenementPageState();
}

class _EvenementPageState extends State<EvenementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.lightGreen,
          title: Text("Evenements"),
        ),
        body: Center(
          child: Text('Evenements'),
        ));
  }
}
