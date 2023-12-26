import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';

List<String> list1 = <String>[
  'Watt (W)',
  'Joule/Second (J/s)',
  'Kilogram-meter/second (kg-m/s)',
  'Kilocalories/second (kcal/s)',
  'Imperial horsepower (hp)',
  'Newton-meter/second (N-m/s)',
  'Kilowatt (kW)'
];

class Power_converter extends StatelessWidget {
  const Power_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Power Conversion",
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
