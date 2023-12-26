import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';
import 'package:unit_converter/ProvidersList/customProvider.dart';

// ignore: must_be_immutable, camel_case_types
class Pressure_converter extends StatelessWidget {
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
  Map<String, double> pressureConversion = {
    'Bar': 1,
    'Standard atmosphere (atm)': 1.01325,
    'Millimeter of water (mmH20)': 10197.1621,
    'Pounds/square foot (psf)': 2088.54349,
    'Pounds/square inch (psi)': 14.5038,
    'Millimeter of mercury (mmHg)': 750.061683,
    'Inch of mercury (inHg)': 29.5299831,
    'Millibar (mbar)': 1000,
    'Hectopascal (hPa)': 1000,
    'Kilopascal (kPa)': 100,
  };

  Pressure_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          "Pressure Conversion",
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
            Provider.of<ButtonClickProvider>(context, listen: false)
                .InputString = "0";
          },
        ),
      ),
      body: SetUpUi(list1: list1, mappedConvertor: pressureConversion),
    );
  }
}
