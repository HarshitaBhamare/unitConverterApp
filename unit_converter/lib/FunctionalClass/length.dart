import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';

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

class length_converter extends StatelessWidget {
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
        ),
        body: Center(
          // child: SetUp_Ui(gettingClass: ),
          child: SetUpUi(list1: list1),
        ));
  }
}
