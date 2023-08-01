import 'package:flutter/material.dart';
import 'package:train/constants.dart';

void finishAzkarDialogBox(BuildContext context){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: const Text(
        'ما شاء الله',
        style: TextStyle(
          color: mainTextColor,
          fontSize: 20,
          fontFamily: 'Cairo',
        ),
        textDirection: TextDirection.rtl,
      ),
      content:  const Text(
        'لقد أنهيت الأذكار',
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
            Navigator.pop(context);
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
              'حسناََ',
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