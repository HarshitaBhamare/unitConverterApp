import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';

List<String> list1 = <String>[
  'Indian Rupee (INR)',
  'US Dollar (USD)',
  'Euro (EUR)',
  'Japanese Yan (JPY)',
  'British Pound Sterling (GBP)',
  'Australian Dollar (AUD)',
  'Canadian Dollar (CAD)',
  'Swiss Franc (CHF)',
  'Chinese Yuan (CNY) ',
  'New Zealand Dollar (NZD) ',
];

class currency_converter extends StatelessWidget {
  const currency_converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: Text(
            "Currency",
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
