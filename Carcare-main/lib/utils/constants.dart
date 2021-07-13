import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void createSnackBar(String message, BuildContext context, Color color) {
  final snackBar = new SnackBar(
    duration: const Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    content: new Text(
      message,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14.0,
      ),
    ),
    backgroundColor: color,
  );
  // Find the Scaffold in the Widget tree and use it to show a SnackBar!
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Widget createProgressDialog(String message, BuildContext context) {
  return AlertDialog(
    content: Container(
      height: double.infinity / 20,
      width: double.infinity / 10,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(
              Colors.blueGrey,
            ),
          ),
          Text(
            message,
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}
