import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';

class Weight_converter extends StatelessWidget {
  Map<String, double> massConversion = {
    'Gram (g)': 1,
    'Kilogram (kg)': 0.001,
    'Tonne (t)': 1e-6,
    'Quintal (q)': 1e-5,
    'Carat (ct)': 5,
    'Milligram (mg)': 1000,
  };

  List<String> list1 = <String>[
    'Gram (g)',
    'Kilogram (kg)',
    'Tonne (t)',
    'Quintal (q)',
    'Carat (ct)',
    'Milligram (mg)',
  ];
  Weight_converter({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: Text(
            "Weight Conversion",
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
        body: SetUpUi(
          list1: list1,
          mappedConvertor: massConversion,
        ));
  }
}
