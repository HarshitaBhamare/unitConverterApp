import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/FunctionalClass/area.dart';
import 'package:unit_converter/Pages/InnerPage.dart';
import 'package:unit_converter/ProvidersList/customCalculator.dart';
import 'package:unit_converter/customButtons/customButton.dart';

class ButtonClickProvider with ChangeNotifier {
  bool isFake = false;
  String InputString = "";

  void showNumber(
      String numText, BuildContext context, Map<String, double> myMap) {
    if (!isFake) {
      print("Isfalse is true");
      if (numText == 'AC') {
        InputString = "";
      } else {
        print("firstInput" + numText);
        // print("firstInput" + numbers);
        InputString += numText;
        print("InputString Val : " + InputString);
      }

      Provider.of<customCalculator>(context, listen: false)
          .convert(double.parse(InputString), context, myMap);
      // Get selectedInput;
      // get selectedOutput;
      // double inputs = 0;
      // area_conversion().getMeterToDecimeter(inputs, context);

      notifyListeners();
    }
  }
}
