import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';
import 'package:unit_converter/ProvidersList/customProvider.dart';

// ignore: must_be_immutable, camel_case_types
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
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          "Area Conversion",
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
            Navigator.of(context).pop(context);
            Provider.of<ButtonClickProvider>(context, listen: false)
                .InputString = "0";
          },
        ),
      ),
      body: SetUpUi(list1: list1, mappedConvertor: areaConversionFunc),
    );
  }
}
