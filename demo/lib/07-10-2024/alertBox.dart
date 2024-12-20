// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AlertBox extends StatefulWidget {
  const AlertBox({super.key});

  @override
  State<AlertBox> createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () => _showAlertBox(context),
              child: Text("Alert Box"))),
    );
  }

  void _showAlertBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Warning !"),
            content: Text("Do you want to continue ?"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Cancelled'),
                      backgroundColor: Colors.red,
                    ));
                  },
                  child: Text("Cancel")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Fluttertoast.showToast(
                    //     msg: "You clicked okay",
                    //     toastLength: Toast.LENGTH_SHORT,
                    //     backgroundColor: Colors.green,
                    //     textColor: Colors.white,
                    //     gravity: ToastGravity.NONE);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Approved"),
                      backgroundColor: Colors.green,
                    ));
                  },
                  child: Text("Okay"))
            ],
          );
        });
  }
}
