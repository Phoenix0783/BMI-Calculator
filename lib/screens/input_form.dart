import 'dart:ui';

import 'package:flutter/material.dart';
import '../screens/results.dart';
import 'package:page_transition/page_transition.dart';

class InputForm extends StatelessWidget {
  const InputForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController heightController = TextEditingController();
    TextEditingController weightController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  // ignore: avoid_unnecessary_containers
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Height',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '( in cm )',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.pink,
                            fontFeatures: [FontFeature.subscripts()],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextField(
                  controller: heightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your height"),
                ),
              ),

              // Weight input
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  // ignore: avoid_unnecessary_containers
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Weight',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '( in Kg )',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.pink,
                            fontFeatures: [FontFeature.subscripts()],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your weight"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 240,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 20,
                      primary: Colors.pink,
                      fixedSize: const Size(300, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: ResultsScreen(
                                weightController.text, heightController.text),
                            type: PageTransitionType.fade));

                    // MaterialPageRoute(
                    //     builder: (context) => ResultsScreen(
                    //         weightController.text, heightController.text)));
                  },
                  child: const Text(
                    'Calculate my BMI',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
