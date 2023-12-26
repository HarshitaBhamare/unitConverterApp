import 'package:flutter/material.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';
import 'package:provider/provider.dart';

class customCalculator with ChangeNotifier {
  double outputValue = 0;
  void convert(
      double value, BuildContext context, Map<String, double> conversionMap) {
    // Assuming dropDownMenuNotifier is already defined and holds the selected units
    String fromUnit = context.read<dropDownMenuNotifier>().SelectedInput!;
    String toUnit = context.read<dropDownMenuNotifier>().SelectedOutput!;

    print("SelectedInput : " + fromUnit + " SelectedOutput : " + toUnit);
    conversionMap.forEach((key, value) {
      print('Unit: $key, Conversion Factor: $value');
    });

    // Check if the units are valid for the given conversion map
    if (!conversionMap.containsKey(fromUnit) ||
        !conversionMap.containsKey(toUnit)) {
      print("Invalid conversion units.");
      return;
    }

    double conversionFactorFrom = conversionMap[fromUnit]!;
    double conversionFactorTo = conversionMap[toUnit]!;

    // Perform the conversion
    outputValue = (value / conversionFactorFrom) * conversionFactorTo;
    notifyListeners(); // Notify the UI or any other listeners of the change
  }
}
