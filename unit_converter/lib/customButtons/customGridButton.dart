import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseClass extends StatefulWidget {
  String? menuName;
  dynamic temp;
  String? imageName;

  BaseClass(
      {super.key,
      required this.menuName,
      required this.temp,
      required this.imageName});

  @override
  State<BaseClass> createState() => _BaseClassState();
}

class _BaseClassState extends State<BaseClass> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // print("image Name : " + widget.imageName!);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widget.temp));
        },
        borderRadius:
            BorderRadius.circular(10), // Ensures the ripple is circular
        // splashColor: const Color.fromARGB(255, 41, 41, 41),
        splashColor: Colors.black87,
        // highlightColor: Colors.white,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.25,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              // color: Colors.black,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.imageName!),
                SizedBox(
                  // height: 10,
                  height: MediaQuery.of(context).size.height * .015,
                ),
                Text(
                  widget.menuName!,
                  style: const TextStyle(fontSize: 19, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
