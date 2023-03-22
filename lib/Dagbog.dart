  import 'package:flutter/material.dart';
  import 'package:shared_preferences/shared_preferences.dart';

  class Dagbog extends StatefulWidget {


    @override
    State<Dagbog> createState() => _DagbogState();
  }

  class _DagbogState extends State<Dagbog> {
    int result = 0;


    @override
    void initState() {
      super.initState();
      _loadSavedResult();
    }

    void _loadSavedResult() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      int savedResult = prefs.getInt('result') ?? 0;
      setState(() {
        result = savedResult;
      });
    }

    void _saveResult(int result) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setInt('result', result);
    }
    void _resetResult() {
      setState(() {
        result = 0;
      });
      _saveResult(result);
    }




    @override
    Widget build(BuildContext context) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args != null && args is Map<String, dynamic>) {
        final num1 = args["num1"] as int?;
        final num2 = args["num2"] as int?;
        final num3 = args["num3"] as int?;
        if (num1 != null && num2 != null && num3 != null) {
          setState(() {
            result += num1 + num2 + num3;
          });
          _saveResult(result);
        }
      }

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Kalorier indtaget'),
        ),
        body: Center(
          child: Text(
            'Du har indtaget $result kalorier',
            style: TextStyle(fontSize: 24),
          ),
        ),

        floatingActionButton:  FloatingActionButton(


          backgroundColor: Colors.red,
          onPressed: _resetResult,
          child: Text("Nulstil"),

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      );

    }
  }


