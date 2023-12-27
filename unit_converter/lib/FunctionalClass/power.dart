import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';
import 'package:unit_converter/ProvidersList/customCalculator.dart';
import 'package:unit_converter/ProvidersList/customProvider.dart';

// ignore: must_be_immutable, camel_case_types
class Power_converter extends StatelessWidget {
  Map<String, double> powerConversion = {
    'Watt (W)': 1,
    'Joule/Second (J/s)': 1,
    'Kilogram-meter/second (kg-m/s)': 0.102,
    'Kilocalories/second (kcal/s)': 0.000238846,
    'Imperial horsepower (hp)': 0.00134102,
    'Newton-meter/second (N-m/s)': 1,
    'Kilowatt (kW)': 0.001,
  };

  Power_converter({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ls = powerConversion.keys.toList();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          "Power Conversion",
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
            Provider.of<customCalculator>(context, listen: false).setZero();
            Provider.of<ButtonClickProvider>(context, listen: false)
                .InputString = "0";
          },
        ),
      ),
      body: SetUpUi(
        list1: ls,
        mappedConvertor: powerConversion,
      ),
    );
  }
}
