import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';

List<String> list1 = <String>[
  'gram (g)',
  'Kilogram (kg)',
  'Tonne (t)',
  'Quintal (q)',
  'Carat (ct)',
  'Miligram (mg)',
];

class Weight_converter extends StatelessWidget {
  const Weight_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: Text(
            "Weight Conversion",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
        ),
        body: SetUpUi(list1: list1));
  }
}
