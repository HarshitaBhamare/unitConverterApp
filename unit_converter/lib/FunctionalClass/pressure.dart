import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';

List<String> list1 = <String>[
  'Bar',
  'Standard atmosphere (atm)',
  'Millimeter of water (mmH20)',
  'Pounds/sqaure foot (psf)',
  'Pounds/sqaure inch (psi)',
  'Millimeter of mercury (mmHg)',
  'Inch of mercury (inHg)',
  'Millibar (mbar)',
  'Hectopascal (hPa)',
  'Kilopasacal (kPa)'
];

class Pressure_converter extends StatelessWidget {
  const Pressure_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Pressure Conversion",
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
