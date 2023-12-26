import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/HomePage.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';
import 'package:unit_converter/customProvider.dart';

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
          )
        ],
        child: MaterialApp(
          title: 'Unit Converter',
          theme: ThemeData.light(),
          home: choose_item(),
          // home: length_converter(),
          // home: BaseClass(menuName: "Currency", temp: length_converter()),
        ));
  }
}
