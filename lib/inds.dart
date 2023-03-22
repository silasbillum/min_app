import 'package:flutter/material.dart';
import 'Morgenmad.dart';

class Dagbog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("settings"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Back"),
        ),
      ),
    );
  }
}
