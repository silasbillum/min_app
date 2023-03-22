import 'package:flutter/material.dart';




class Middagsmad extends StatefulWidget {
   Middagsmad({Key? key}) : super(key: key);
  @override
  _MiddagsmadState createState() => _MiddagsmadState();
}

class _MiddagsmadState extends State<Middagsmad> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter number 2',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Add numbers'),
              onPressed: () {
                int num1 = 1; // initialize num1 to 1
                int num2 = int.tryParse(num2Controller.text) ?? 0; // get value of num2 from the text field

                Navigator.pushNamed(context, '/third', arguments: {
                  'num1': num1,
                  'num2': num2,
                });


              },
            ),
          ],
        ),
      ),
    );
  }
}