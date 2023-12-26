import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/InnerPage.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';

class currency_converter extends StatelessWidget {
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
  Map<String, double> currencyConversion = {
    'Indian Rupee (INR)': 1,
    'US Dollar (USD)': 0.013,
    'Euro (EUR)': 0.012,
    'Japanese Yen (JPY)': 1.48,
    'British Pound Sterling (GBP)': 0.010,
    'Australian Dollar (AUD)': 0.018,
    'Canadian Dollar (CAD)': 0.017,
    'Swiss Franc (CHF)': 0.012,
    'Chinese Yuan (CNY)': 0.089,
    'New Zealand Dollar (NZD)': 0.020,
  };

  currency_converter({super.key});

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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SetUpUi(
          list1: list1,
          mappedConvertor: currencyConversion,
        ));
  }
}
