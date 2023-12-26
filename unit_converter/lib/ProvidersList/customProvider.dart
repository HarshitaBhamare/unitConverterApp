import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:unit_converter/ProvidersList/customCalculator.dart';

class ButtonClickProvider with ChangeNotifier {
  bool isFake = false;
  // ignore: non_constant_identifier_names
  String InputString = "0";

  void showNumber(String numText, BuildContext context,
      Map<String, double> myMap, bool isfake) {
    isFake = isfake;
    if (!isFake) {
      if (numText == 'AC') {
        InputString = "0";
      } else if (numText == 'C') {
        int endIndex = InputString.length - 1;
        if (endIndex > 0) {
          InputString = InputString.substring(0, InputString.length - 1);
        } else {
          InputString = "0";
        }
      } else if (numText == '.') {
        if (!InputString.contains(numText)) {
          InputString += numText;
        }
      } else {
        if (InputString.length == 1 && InputString.characters.first == "0") {
          InputString = numText;
        } else {
          InputString += numText;
        }
      }

      Provider.of<customCalculator>(context, listen: false)
          .convert(double.parse(InputString), context, myMap);
      notifyListeners();
    }
  }
}
