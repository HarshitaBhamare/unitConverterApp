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
    if (conversionMap.keys.first == 'Kelvin') {
      print("I am temperature");
      //the map is for temperature
      switch (fromUnit) {
        case 'Kelvin':
          switch (toUnit) {
            case 'Degree Celsius':
              outputValue = value - 273.15;
              break;
            case 'Degree Fahrenheit':
              outputValue = (value - 273.15) * 9 / 5 + 32;
              break;
            case 'Degree Rankine':
              outputValue = (value) * 9 / 5;
              break;
            case 'Degree Reaumur':
              outputValue = (value - 273.15) * 4 / 5;
              break;
            case 'Kelvin':
              outputValue = value;
              break;
          }
          notifyListeners();
          break;
        case 'Degree Celsius':
          switch (toUnit) {
            case 'Kelvin':
              outputValue = value + 273.15;
              break;
            case 'Degree Fahrenheit':
              outputValue = (value * 9 / 5) + 32;
              break;
            case 'Degree Rankine':
              outputValue = (value + 273.15) * 9 / 5;
              break;
            case 'Degree Reaumur':
              outputValue = value * 4 / 5;
              break;
            case 'Degree Celsius':
              outputValue = value;
              break;
          }
          notifyListeners();
          break;
        case 'Degree Fahrenheit':
          switch (toUnit) {
            case 'Kelvin':
              outputValue = (value - 32) * 5 / 9 + 273.15;
              break;
            case 'Degree Celsius':
              outputValue = (value - 32) * 5 / 9;
              break;
            case 'Degree Rankine':
              outputValue = value + 459.67;
              break;
            case 'Degree Reaumur':
              outputValue = (value - 32) * 4 / 9;
              break;
            case 'Degree Fahrenheit':
              outputValue = value;
              break;
          }
          notifyListeners();
          break;
        case 'Degree Rankine':
          switch (toUnit) {
            case 'Kelvin':
              outputValue = value * 5 / 9;
              break;
            case 'Degree Fahrenheit':
              outputValue = value - 459.67;
              break;
            case 'Degree Degree Celsius':
              outputValue = (value - 491.67) * 5 / 9;
              break;
            case 'Degree Reaumur':
              outputValue = (value - 491.67) * 4 / 9;
              break;
            case 'Degree Rankine':
              outputValue = value;
              break;
          }
          notifyListeners();
          break;
        case 'Degree Reaumur':
          switch (toUnit) {
            case 'Kelvin':
              outputValue = (value * 5 / 4) + 273.15;
              break;
            case 'Degree Fahrenheit':
              outputValue = (value * 9 / 4) + 32;
              break;
            case 'Degree Celsius':
              outputValue = value * 5 / 4;
              break;
            case 'Degree Rankine':
              outputValue = (value * 9 / 4) + 491.67;
              break;
            case 'Degree Reaumur':
              outputValue = value;
              break;
          }
          notifyListeners();
          break;
      }
    } else {
      print("I am not temperature");
// print("SelectedInput : " + fromUnit + " SelectedOutput : " + toUnit);
      conversionMap.forEach((key, value) {
        // print('Unit: $key, Conversion Factor: $value');
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
}
