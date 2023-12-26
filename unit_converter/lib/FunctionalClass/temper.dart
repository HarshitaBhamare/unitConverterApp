import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';

List<String> list1 = <String>[
  'Kelvin',
  'Degree Celsius',
  'Degree Fahrenheit',
  'Degree Rankine',
  'Degree Reaumur',
];

class Temperature_converter extends StatelessWidget {
  const Temperature_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Temperature",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: SetUpUi(list1: list1),
    );
  }
}
