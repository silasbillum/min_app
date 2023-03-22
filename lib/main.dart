import 'package:flutter/material.dart';
import 'package:min_app/Aftensmad.dart';
import 'package:min_app/Middagsmad.dart';
import 'package:min_app/Morgenmad.dart';
import 'package:min_app/Dagbog.dart';
import 'package:min_app/Home.dart';

import 'package:min_app/Settings.dart';


void main() {
  runApp(  MaterialApp(
    initialRoute: '/',
    routes: {
      '/h': (context) => Morgenmad(),
      '/second': (context) => Middagsmad(),
      '/third': (context) => Aftensmad(),
      '/dagbog': (context) => Dagbog(),
    },

home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  int index = 0;
  final screens = [
    Home(),
    Dagbog(),
    Counter(),
   Aftensmad(),



  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],


      bottomNavigationBar: NavigationBarTheme(

        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade200,
        ),
        child: NavigationBar(
          backgroundColor: Colors.blue,
          height: 60,
          selectedIndex: index,
          onDestinationSelected: (index) =>
          setState(() => this.index = index),
          destinations: [



            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.book), label: "Dagbog"),
            NavigationDestination(icon: Icon(Icons.balance), label: "Counter"),
            NavigationDestination(icon: Icon(Icons.emoji_food_beverage_rounded), label: "Aftensmad"),


          ],
        ),

      ),



















              );


























  }
}



