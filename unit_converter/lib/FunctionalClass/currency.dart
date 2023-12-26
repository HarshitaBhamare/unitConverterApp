import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:unit_converter/Pages/SetUpUi.dart';
import 'package:unit_converter/ProvidersList/customProvider.dart';

// ignore: must_be_immutable, camel_case_types
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
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: const Text(
            "Currency",
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
            },
          ),
        ),
        body: SetUpUi(
          list1: list1,
          mappedConvertor: currencyConversion,
        ));
  }
}
