import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';
import 'package:unit_converter/ProvidersList/customCalculator.dart';
import 'package:unit_converter/ProvidersList/customProvider.dart';

// ignore: must_be_immutable, camel_case_types
class Temperature_converter extends StatelessWidget {
  Map<String, double> temperatureConvertor = {
    'Kelvin': 273,
    'Degree Celsius': 1,
    'Degree Fahrenheit': 18,
    'Degree Rankine': 18,
    'Degree Reaumur': 0.8,
  };

  Temperature_converter({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ls = temperatureConvertor.keys.toList();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          "Temperature",
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
      body: SetUpUi(list1: ls, mappedConvertor: temperatureConvertor),
    );
  }
}
