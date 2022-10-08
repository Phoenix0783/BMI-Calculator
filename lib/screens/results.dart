import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final String weigth;
  final String height;

  const ResultsScreen(this.weigth, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    var v = 0;
    v = int.parse(weigth);
    var y = 0;
    y = int.parse(height);
    var y1 = y / 100;
    var y2 = y1 * y1;
    var results = v / y2;
    var value = results;

    var mainValue;

    if (value < 18) {
      mainValue = 'Underweight';
    } else if (value > 18 && value < 24) {
      mainValue = 'Normal';
    } else if (value > 25 && value < 29) {
      mainValue = 'Over Weight';
    } else if (value > 30 && value < 40) {
      mainValue = 'Obesity';
    } else {
      mainValue = 'Extreme Obesity';
    }
    var value1 = value.toStringAsFixed(2);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your BMI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Your Body Mass Index is',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.start,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                ' $value1',
                style: const TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ),
          ),
          Center(
            child: Text('You are $mainValue',
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.pink)),
          )
        ],
      ),
    );
  }
}
