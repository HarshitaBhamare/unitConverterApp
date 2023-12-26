import 'package:flutter/material.dart';
import 'package:unit_converter/FunctionalClass/length.dart';
import 'package:unit_converter/FunctionalClass/pressure.dart';
import 'package:unit_converter/FunctionalClass/weight.dart';
import 'package:unit_converter/FunctionalClass/volume.dart';
import 'package:unit_converter/FunctionalClass/power.dart';
import 'package:unit_converter/FunctionalClass/currency.dart';
import 'package:unit_converter/FunctionalClass/speed.dart';
import 'package:unit_converter/FunctionalClass/temper.dart';
import 'package:unit_converter/FunctionalClass/area.dart';
import 'package:unit_converter/customButtons/customGridButton.dart';

// ignore: camel_case_types, must_be_immutable
class choose_item extends StatelessWidget {
  choose_item({super.key});
  double width_col = 70;
  double width_row = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.black,
        title: const Text(
          "Unit Converter",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: width_row,
                ),
                BaseClass(
                    menuName: "Currency",
                    temp: currency_converter(),
                    imageName: 'assets/images/currency.png'),
                SizedBox(
                  width: width_row,
                ),
                BaseClass(
                    menuName: "Length",
                    temp: length_converter(),
                    imageName: 'assets/images/measure.png'),
                SizedBox(
                  width: width_row,
                ),
                BaseClass(
                    menuName: "Area",
                    temp: area_conversion(),
                    imageName: 'assets/images/area.png'),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: width_col,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: width_row,
                ),
                BaseClass(
                    menuName: "Volume",
                    temp: Volume_converter(),
                    imageName: 'assets/images/volume.png'),
                SizedBox(
                  width: width_row,
                ),
                BaseClass(
                    menuName: "Weight",
                    temp: Weight_converter(),
                    imageName: 'assets/images/weight.png'),
                SizedBox(
                  width: width_row,
                ),
                BaseClass(
                    menuName: "Temperature",
                    temp: Temperature_converter(),
                    imageName: 'assets/images/temp.png'),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: width_col,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: width_row,
                ),
                BaseClass(
                    menuName: "Speed",
                    temp: Speed_converter(),
                    imageName: 'assets/images/speed.png'),
                SizedBox(
                  width: width_row,
                ),
                BaseClass(
                    menuName: "Pressure",
                    temp: Pressure_converter(),
                    imageName: 'assets/images/pressure.png'),
                SizedBox(
                  width: width_row,
                ),
                BaseClass(
                    menuName: "Power",
                    temp: Power_converter(),
                    imageName: 'assets/images/power.png'),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ]),
    );
  }
}
