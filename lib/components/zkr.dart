import 'package:flutter/material.dart';
import 'package:train/variables.dart';

// ignore: must_be_immutable
class Zkr extends StatefulWidget {
  Zkr({super.key, required this.title, required this.body, required this.number});

  final String title, body;
  late int number;


  @override
  State<Zkr> createState() => _ZkrState();
}

class _ZkrState extends State<Zkr> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(10),
      width: double.maxFinite,
      child: Column(
        children: [
          Padding(
            // padding: title != ''? const EdgeInsets.only(bottom: 10) : const EdgeInsets.only(bottom: 0),
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              widget.title,
              style: TextStyle(
                color: secondTextColor,
                fontSize: widget.title != ''? 20 : 5,
                fontFamily: 'Cairo',
              ),
            ),
          ),
          Text(
            widget.body,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: mainTextColor,
                fontSize: 18,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
                height: 1.5),
            textDirection: TextDirection.rtl,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (widget.number > 0) widget.number--;
              });
            },
            child: Container(
              margin:
                  const EdgeInsets.only(right: 5, left: 5, top: 15, bottom: 8),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: widget.number>0 ? buttonColor : buttonColorDisabled,
                borderRadius: BorderRadius.circular(14),
              ),
              width: double.maxFinite,
              child: Text(
                '${widget.number}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 25,
                    color: mainTextColor,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
