import 'package:flutter/material.dart';
import 'package:train/constants.dart';

class AzkarBox extends StatelessWidget {
  const AzkarBox({super.key, required this.text, required this.onTap});


  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isSMobile = MediaQuery.of(context).size.width <= 360;
    final isMMobile = MediaQuery.of(context).size.width <= 390;

    return GestureDetector(
        onTap: onTap,
        child:  Container(
            margin: const EdgeInsets.all(10),
            padding: isMMobile? const EdgeInsets.only(
                right: 0, bottom: 10, left: 0)
                : const EdgeInsets.only(
                right: 10, bottom: 20, left: 10),
            decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Icon(
                    Icons.mosque_outlined,
                    color: mainTextColor,
                  ),
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        text,
                        style: TextStyle(
                          color: mainTextColor,
                          fontSize: isSMobile? 12:16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_left_rounded,
                      size: isSMobile? 25:40,
                      color: mainTextColor,
                    )
                  ],
                )
              ],
            )
        ),
    );
  }
}




