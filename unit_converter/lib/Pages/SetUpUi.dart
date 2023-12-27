// ignore: file_names
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:unit_converter/ProvidersList/customCalculator.dart';
import 'package:unit_converter/customButtons/customButton.dart';
import 'package:unit_converter/customButtons/customDropDownMenu.dart';
import 'package:unit_converter/ProvidersList/customProvider.dart';

// ignore: must_be_immutable
class SetUpUi extends StatefulWidget {
  List<String>? list1;
  Map<String, double>? mappedConvertor;
  SetUpUi({super.key, required this.list1, required this.mappedConvertor});

  @override
  State<SetUpUi> createState() => _SetUpUiState();
}

class _SetUpUiState extends State<SetUpUi> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<dropDownMenuNotifier>(context, listen: false)
          .SetSelectedInput(widget.list1!.first, context);
      Provider.of<dropDownMenuNotifier>(context, listen: false)
          .SetSelectedOutput(widget.list1!.elementAt(1), context);
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
            height: MediaQuery.of(context).size.width * .03,
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
                  child: customDropDownMenu().customDropDownSearchFirst(
                      widget.list1!, context, widget.mappedConvertor!),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .95,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: Text(
                          inputText,
                          style: const TextStyle(
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
          SizedBox(
            height: MediaQuery.of(context).size.height * .037,
            child: const Text(
              "TO",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
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
                  child: customDropDownMenu().customDropDownSearchSecond(
                      widget.list1!, context, widget.mappedConvertor!),
                ),
                SizedBox(
                  // height: 20,
                  width: MediaQuery.of(context).size.width * .95,
                  height: MediaQuery.of(context).size.height / 15,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: Text(
                          context
                              .watch<customCalculator>()
                              .outputValue
                              .toString(),
                          style: const TextStyle(
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
                  ButtonsNum(
                      isFake: false,
                      numberText: '7',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: '8',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: '9',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: 'AC',
                      mappedConvertor: widget.mappedConvertor),
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
                  ButtonsNum(
                      isFake: false,
                      numberText: '4',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: '5',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: '6',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: 'C',
                      mappedConvertor: widget.mappedConvertor),
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
                  ButtonsNum(
                      isFake: false,
                      numberText: '1',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: '2',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: '3',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: true,
                      numberText: '',
                      mappedConvertor: widget.mappedConvertor),
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
                  ButtonsNum(
                      isFake: false,
                      numberText: '00',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: '0',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: false,
                      numberText: '.',
                      mappedConvertor: widget.mappedConvertor),
                  ButtonsNum(
                      isFake: true,
                      numberText: '',
                      mappedConvertor: widget.mappedConvertor),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
