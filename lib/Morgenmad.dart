import 'package:flutter/material.dart';

class Morgenmad extends StatefulWidget {
  @override
  _MorgenmadState createState() => _MorgenmadState();
}

class _MorgenmadState extends State<Morgenmad> {

  TextEditingController num1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Add MaterialApp widget with named routes
      // and set home to null
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter number 1',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Add numbers'),
                onPressed: () {
                  Navigator.pushNamed(context, '/second', arguments: {
                    'num1': int.parse(num1Controller.text),
                  });
                },
              ),
            ],
          ),
        ),
      ),

      routes: {
        '/Middagsmad': (context) => MiddagsmadScreen(),
        // Define other named routes here
      },
      // Other app properties
    );
  }
}

class MiddagsmadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final int num1 = arguments['num1'] as int;

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Number 1: $num1',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}