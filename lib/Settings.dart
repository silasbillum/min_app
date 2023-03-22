import 'package:flutter/material.dart';


class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _calories = 0;

  void _incrementCalories(int amount) {
    setState(() {
      _calories += amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Calorie Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_calories',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
              ),
              onPressed: () => _incrementCalories(5),
              child: Text('Add 5 Calories'),
            ),

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
              ),
              onPressed: () => _incrementCalories(50),
              child: Text('Add 50 Calories'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
              ),
              onPressed: () => _incrementCalories(100),
              child: Text('Add 100 Calories'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () => _incrementCalories(-5),
              child: Text('Remove 5 Calories'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () => _incrementCalories(-50),
              child: Text('Remove 50 Calories'),
            ),
          ],
        ),
      ),
    );
  }
}