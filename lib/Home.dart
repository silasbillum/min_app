import 'package:flutter/material.dart';

import 'package:min_app/Morgenmad.dart';
import 'Middagsmad.dart';
import 'Aftensmad.dart';


class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home"),

      ),
      body: Center(


        child: Column(


          children: [
            SizedBox(height: 120,),





                Container(child: Column(
                  children: [
                    SizedBox(
                      height: 40,


                    ),

                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Aftensmad()));
                      },
                      icon: Icon(Icons.fastfood_sharp, size: 30,),
                      label: Text("Indsæt kalorier"),



                      style: ElevatedButton.styleFrom(foregroundColor: Colors.black,backgroundColor: Colors.brown, fixedSize: Size(260, 50), shape: StadiumBorder()),


                    ),


                  ],
                ),)

              ],
            ),),



    );



  }}
