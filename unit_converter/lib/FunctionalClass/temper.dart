import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';
import 'package:provider/provider.dart';

class Temperature_converter extends StatelessWidget {
  List<String> list1 = <String>[
    'Kelvin',
    'Degree Celsius',
    'Degree Fahrenheit',
    'Degree Rankine',
    'Degree Reaumur',
  ];

  Map<String, double> temperatureConvertor = {
    'Kelvin': 273,
    'Degree Celsius': 273,
    'Degree Fahrenheit': 273,
    'Degree Rankine': 273,
    'Degree Reaumur': 273,
  };

  Temperature_converter({super.key});

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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SetUpUi(list1: list1, mappedConvertor: temperatureConvertor),
    );
  }
}
