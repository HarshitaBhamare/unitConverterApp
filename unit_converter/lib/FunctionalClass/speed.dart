import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';

// ignore: must_be_immutable, camel_case_types
class Speed_converter extends StatelessWidget {
  List<String> list1 = <String>[
    'Kilometer/hour(km/h)',
    'Kilometer/second (km/s)',
    'Mile/hour (mph)',
    'Mach (Ma)',
    'Inch/second (in/s)',
    'Meter/second(m/s)',
    'Speed of light (c)',
  ];
  Map<String, double> speedConversion = {
    'Kilometer/hour (km/h)': 1,
    'Kilometer/second (km/s)': 0.000277778,
    'Mile/hour (mph)': 0.621371,
    'Mach (Ma)': 0.000840978,
    'Inch/second (in/s)': 39.3701,
    'Meter/second (m/s)': 0.277778,
    'Speed of light (c)': 8.75e-10,
  };

  Speed_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: const Text(
            "Speed Conversion",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SetUpUi(
          list1: list1,
          mappedConvertor: speedConversion,
        ));
  }
}
