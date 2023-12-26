import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class dropDownMenuNotifier with ChangeNotifier {
  String? SelectedInput;
  String? SelectedOutput;

  void SetSelectedInput(String inputString) {
    SelectedInput = inputString;
    notifyListeners();
  }

  void SetSelectedOutput(String outputString) {
    SelectedOutput = outputString;
    notifyListeners();
  }
}

class customDropDownMenu {
  Widget customDropDownSearchFirst(List<String> list1, BuildContext context) {
    final sInput = context.watch<dropDownMenuNotifier>().SelectedInput;
    return DropdownButton<String>(
      value: sInput,
      icon: Icon(Icons.arrow_drop_down_outlined),
      elevation: 0,
      dropdownColor: Colors.grey.shade600,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
      ),
      borderRadius: BorderRadius.circular(10),
      underline: Container(
        color: Colors.transparent,
      ),
      onChanged: (String? value) {
        Provider.of<dropDownMenuNotifier>(context, listen: false)
            .SetSelectedInput(value!);
      },
      items: list1.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget customDropDownSearchSecond(List<String> list1, BuildContext context) {
    final sOutput = context.watch<dropDownMenuNotifier>().SelectedOutput;
    return DropdownButton<String>(
      value: sOutput,
      icon: Icon(Icons.arrow_drop_down_outlined),
      elevation: 0,
      dropdownColor: Colors.grey.shade600,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
      ),
      borderRadius: BorderRadius.circular(10),
      underline: Container(
        color: Colors.transparent,
      ),
      onChanged: (String? value) {
        Provider.of<dropDownMenuNotifier>(context, listen: false)
            .SetSelectedOutput(value!);
      },
      items: list1.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
