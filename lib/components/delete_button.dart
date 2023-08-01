import 'package:flutter/material.dart';
import 'package:train/constants.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key, required this.isClicked, required this.onTap});

  final bool isClicked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 5),
        decoration: BoxDecoration(
          color: isClicked == false
              ? buttonDeleteColor
              : buttonColorDisabled,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          isClicked == false ? 'مسح' : 'تم المسح',
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 12,
              color: mainTextColor,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
