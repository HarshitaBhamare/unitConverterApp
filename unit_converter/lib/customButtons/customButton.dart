import 'package:flutter/material.dart';
import 'package:unit_converter/ProvidersList/customProvider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable

class ButtonsNum extends StatefulWidget {
  bool isFake = false;
  String? numberText;
  ButtonsNum({super.key, required this.isFake, required this.numberText});

  @override
  State<ButtonsNum> createState() => _ButtonsNumState();
}

class _ButtonsNumState extends State<ButtonsNum> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ButtonClickProvider>(
      builder:
          (BuildContext context, ButtonClickProvider value, Widget? child) =>
              Expanded(
                  child: Row(
        children: [
          InkWell(
            onTap: () {
              value.showNumber(widget.numberText!, context);
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .20,
              height: MediaQuery.of(context).size.height * .098,
              decoration: widget.isFake
                  ? const BoxDecoration()
                  : BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
              child: widget.isFake
                  ? const SizedBox()
                  : Text(
                      widget.numberText!,
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ],
      )),
    );
  }
}
