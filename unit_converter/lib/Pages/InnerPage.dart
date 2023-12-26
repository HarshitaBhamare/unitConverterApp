import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unit_converter/FunctionalClass/area.dart';
import 'package:unit_converter/customButtons/customButton.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';
import 'package:unit_converter/customProvider.dart';

// ignore: must_be_immutable
class SetUpUi extends StatefulWidget {
  List<String>? list1;
  SetUpUi({super.key, required this.list1});

  @override
  State<SetUpUi> createState() => _SetUpUiState();
}

class _SetUpUiState extends State<SetUpUi> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<dropDownMenuNotifier>(context, listen: false)
          .SetSelectedInput(widget.list1!.first);
      Provider.of<dropDownMenuNotifier>(context, listen: false)
          .SetSelectedOutput(widget.list1!.first);
    });
  }

  @override
  Widget build(BuildContext context) {
    final String inputText = context.watch<ButtonClickProvider>().InputString;
    return Container(
      // alignment: Alignment.center,
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .01,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white10,
            ),

            // color: Colors.green,

            child: Column(
              children: [
                Container(
                  // color: Colors.yellow,
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width * .90,
                  child: customDropDownMenu()
                      .customDropDownSearchFirst(widget.list1!, context),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .95,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .90,
                        child: Container(
                          child: Text(
                            inputText,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .035,
            child: const Text(
              "TO",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white10,
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width * .90,
                  child: customDropDownMenu()
                      .customDropDownSearchSecond(widget.list1!, context),
                ),
                SizedBox(
                  // height: 20,
                  width: MediaQuery.of(context).size.width * .95,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .90,
                        child: Text(
                          'Bitch',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .12,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .02,
                  ),
                  ButtonsNum(isFake: false, numberText: '7'),
                  ButtonsNum(isFake: false, numberText: '8'),
                  ButtonsNum(isFake: false, numberText: '9'),
                  ButtonsNum(isFake: false, numberText: 'AC'),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .02,
                  ),
                  ButtonsNum(isFake: false, numberText: '4'),
                  ButtonsNum(isFake: false, numberText: '5'),
                  ButtonsNum(isFake: false, numberText: '6'),
                  ButtonsNum(isFake: false, numberText: 'C'),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .02,
                  ),
                  ButtonsNum(isFake: false, numberText: '1'),
                  ButtonsNum(isFake: false, numberText: '2'),
                  ButtonsNum(isFake: false, numberText: '3'),
                  ButtonsNum(isFake: true, numberText: ''),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .02,
                  ),
                  ButtonsNum(isFake: false, numberText: '00'),
                  ButtonsNum(isFake: false, numberText: '0'),
                  ButtonsNum(isFake: false, numberText: '.'),
                  ButtonsNum(isFake: true, numberText: ''),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
