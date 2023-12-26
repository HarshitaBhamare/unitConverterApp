import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/ProvidersList/customCalculator.dart';

class ButtonClickProvider with ChangeNotifier {
  bool isFake = false;
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
          print("1 Char Remaining");
        }
      } else if (numText == '.') {
        if (!InputString.contains(numText)) {
          InputString += numText;
        }
      } else {
        // print("firstInput" + numText);
        // print("firstInput" + numbers);
        if (InputString.length == 1 && InputString.characters.first == "0") {
          InputString = numText;
        } else {
          InputString += numText;
        }
        // print("InputString Val : " + InputString);
      }

      Provider.of<customCalculator>(context, listen: false)
          .convert(double.parse(InputString), context, myMap);
      notifyListeners();
    }
  }
}
