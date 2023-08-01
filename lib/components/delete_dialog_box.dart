import 'package:flutter/material.dart';
import 'package:train/constants.dart';

void deleteDialogBox(BuildContext context, VoidCallback onTap){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: const Text(
        'تأكيد المسح',
        style: TextStyle(
          color: mainTextColor,
          fontSize: 20,
          fontFamily: 'Cairo',
        ),
        textDirection: TextDirection.rtl,
      ),
      content:  const Text(
        'متأكد أنك تريد المسح ؟',
        style: TextStyle(
          color: mainTextColor,
          fontSize: 16,
          fontFamily: 'Cairo',
        ),
        textDirection: TextDirection.rtl,
      ),
      backgroundColor: boxColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      actionsPadding: const EdgeInsets.only(top: 10, right: 10, bottom: 20),
      actions: [
        GestureDetector(
          onTap: (){
            onTap();
          },
          child: Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
              color: buttonDeleteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'مسح',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  color: mainTextColor,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'تراجع',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  color: mainTextColor,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  });
}