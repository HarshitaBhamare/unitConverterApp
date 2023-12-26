import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';

// ignore: camel_case_types, must_be_immutable
class Volume_converter extends StatelessWidget {
  Map<String, double> volumeConversion = {
    'Liter (l)': 1,
    'Centiliter (cl)': 100,
    'Milliliter (ml)': 1000,
    'Hectoliter (hl)': 0.01,
    'Deciliter (dl)': 10,
  };

  List<String> list1 = <String>[
    'Liter (l)',
    'Centiliter (cl)',
    'Milliliter (ml)',
    'Hectoliter (hl)',
    'Deciliter (dl)',
  ];

  Volume_converter({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          "Volume Conversion",
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
          },
        ),
      ),
      body: SetUpUi(list1: list1, mappedConvertor: volumeConversion),
    );
  }
}
