import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';

List<String> list1 = <String>[
  'Kilometer/hour(km/h)',
  'Kilometer/second (km/s)',
  'Mile/hour (mph)',
  'Mach (Ma)',
  'Inch/second (in/s)',
  'Meter/second(m/s)',
  'Speed of light (c)',
];

class Speed_converter extends StatelessWidget {
  const Speed_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: Text(
            "Speed Conversion",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
        ),
        body: SetUpUi(list1: list1));
  }
}
