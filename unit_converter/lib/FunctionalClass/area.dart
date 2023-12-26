import 'package:flutter/material.dart';
import 'package:unit_converter/Pages/InnerPage.dart';
import 'package:provider/provider.dart';

List<String> list1 = <String>[
  'Sqaure meter',
  'Sqaure decimeter',
  'Sqaure centimeter',
  'Sqaure kilometer',
  'Sqaure millimeter'
];

class fku with ChangeNotifier {
  String? outputString;
  void SetOutputString(String o) {
    outputString = o;
    notifyListeners();
  }
}

class area_conversion extends StatelessWidget {
  const area_conversion({super.key});

  void getMeterToDecimeter(double meter, BuildContext context) {
    // codingngggggg cal....
    double ans = 0;
    Provider.of<fku>(context, listen: false).SetOutputString(ans.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          "Area Conversion",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: SetUpUi(list1: list1),
      // body: Placeholder(),
    );
  }
}
