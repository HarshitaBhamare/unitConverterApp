import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';
import 'package:unit_converter/ProvidersList/customCalculator.dart';
import 'package:unit_converter/ProvidersList/customProvider.dart';

// ignore: must_be_immutable, camel_case_types
class length_converter extends StatelessWidget {
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
    List<String> ls = lengthConversion.keys.toList();
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
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
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
              Provider.of<ButtonClickProvider>(context, listen: false)
                  .InputString = "0";
              Provider.of<customCalculator>(context, listen: false).setZero();
            },
          ),
        ),
        body: Center(
          // child: SetUp_Ui(gettingClass: ),
          child: SetUpUi(list1: ls, mappedConvertor: lengthConversion),
        ));
  }
}
