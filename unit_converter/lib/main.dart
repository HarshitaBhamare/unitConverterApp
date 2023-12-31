// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/HomePage.dart';
import 'package:unit_converter/ProvidersList/customCalculator.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';
import 'package:unit_converter/ProvidersList/customProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ButtonClickProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => dropDownMenuNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => customCalculator(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Unit Converter',
        theme: ThemeData.light(),
        home: choose_item(),
      ),
    );
  }
}
