import 'package:flutter/material.dart';
import 'package:train/constants.dart';
import 'package:train/components/zkr.dart';

class AzkarElsalahPage extends StatelessWidget {
  const AzkarElsalahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 25,
                        color: mainTextColor,
                      )),
                  const Text(
                    'أذكار بعد الصلاة',
                    style: TextStyle(
                        color: mainTextColor,
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold),
                  ),
                  const Text('             ')
                ],
              ),
              Zkr(
                  title: 'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ',
                  body: 'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255].',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                  'سُبْحـانَ اللهِ.',
                  number: 33),
              Zkr(
                  title: '',
                  body:
                  ' الْحَمْدُ لِلَّهِ.',
                  number: 33),
              Zkr(
                  title: '',
                  body:
                  'اللهُ أَكْبَرُ.',
                  number: 34),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: GestureDetector(
                  onTap: () {
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
                    setZkr(name: 'azkarElsalah', num: azkarElsalah == null ? 1 : azkarElsalah += 1);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    width: 30,
                    child: const Text(
                      'انتهيت',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: mainTextColor,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
