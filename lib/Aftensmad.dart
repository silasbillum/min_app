import 'package:flutter/material.dart';




class Aftensmad extends StatefulWidget {


  Aftensmad({Key? key,}) : super(key: key);

  @override
  _AftemsmadState createState() => _AftemsmadState();
}

class _AftemsmadState extends State<Aftensmad> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController num3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Morgenmad',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Middagsmad',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: num3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Aftensmad',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text('tilføj'),
              onPressed: () {
                int num1 = int.tryParse(num1Controller.text) ?? 0;
                int num2 = int.tryParse(num2Controller.text) ?? 0;
                int num3 = int.tryParse(num3Controller.text) ?? 0;
                Navigator.restorablePushNamed(context, '/dagbog', arguments: {
                  'num1': num1,
                  'num2': num2,
                  'num3': num3,
                });
              },

        )


          ],
        ),
      ),
    );
  }
}