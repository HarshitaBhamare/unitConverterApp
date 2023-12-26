import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';

class area_conversion extends StatelessWidget {
  // final VoidCallback? onGoBack;
  Map<String, double> areaConversionFunc = {
    'Sqaure meter': 1,
    'Sqaure decimeter': 0.01,
    'Sqaure centimeter': 0.1,
    'Sqaure kilometer': 1000,
    'Sqaure millimeter': 0.001
  };
  List<String> list1 = <String>[
    'Sqaure meter',
    'Sqaure decimeter',
    'Sqaure centimeter',
    'Sqaure kilometer',
    'Sqaure millimeter'
  ];
  area_conversion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Area Conversion",
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
      body: SetUpUi(list1: list1, mappedConvertor: areaConversionFunc),
      // body: Placeholder(),
    );
  }
}
