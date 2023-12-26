import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/InnerPage.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';

class length_converter extends StatelessWidget {
  List<String> list1 = <String>[
    'Meter (m)',
    'Centimeter (cm)',
    'Millimeter (mm)',
    'Kilometer (km)',
    'Mile (mi)',
    'Decimeter (dm)',
    'Light year (ly)',
    'Nanometer (nm)'
  ];
  Map<String, double> lengthConversion = {
    'Meter (m)': 1,
    'Centimeter (cm)': 100,
    'Millimeter (mm)': 1000,
    'Kilometer (km)': 0.001,
    'Mile (mi)': 0.000621371,
    'Decimeter (dm)': 10,
    'Light year (ly)': 1.057e-16,
    'Nanometer (nm)': 1e+9,
  };

  length_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: const Text(
            "Length Conversion",
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
        body: Center(
          // child: SetUp_Ui(gettingClass: ),
          child: SetUpUi(list1: list1, mappedConvertor: lengthConversion),
        ));
  }
}
