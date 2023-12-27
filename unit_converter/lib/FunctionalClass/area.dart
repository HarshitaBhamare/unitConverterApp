import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';
import 'package:unit_converter/ProvidersList/customCalculator.dart';
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

  area_conversion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> ls = areaConversionFunc.keys.toList();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
            Provider.of<ButtonClickProvider>(context, listen: false)
                .InputString = "0";
            Provider.of<customCalculator>(context, listen: false).setZero();
            Navigator.of(context).pop(context);
          },
        ),
      ),
      body: SetUpUi(list1: ls, mappedConvertor: areaConversionFunc),
    );
  }
}
