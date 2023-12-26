import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';

List<String> list1 = <String>[
  'Liter (l)',
  'Centiliter (cl)'
      'Mililiter (ml)',
  'hectoliter (hl)',
  'Deciliter (dl)',
];

class Volume_converter extends StatelessWidget {
  const Volume_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Volume Conversion",
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
