import 'package:flutter/material.dart';
import 'package:train/constants.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isClicked1 = false;
  bool isClicked2 = false;
  bool isClicked3 = false;
  bool isClicked4 = false;

  @override
  Widget build(BuildContext context) {
    final isSMobile = MediaQuery.of(context).size.width <= 360;

    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 0),
              child: Column(
                textDirection: TextDirection.rtl,
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
                        'الإعدادت',
                        style: TextStyle(
                            color: mainTextColor,
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold),
                      ),
                      const Text('             ')
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            constraints: const BoxConstraints(maxWidth: 300),
                            transformAlignment: Alignment.center,
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 22),
                            decoration: BoxDecoration(
                                color: boxColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text( azkarElsabah != null?
                            'عدد مرات قراءة أذكار الصباح : $azkarElsabah'
                            :'عدد مرات قراءة أذكار الصباح : 0',
                              style: TextStyle(
                                color: mainTextColor,
                                fontSize: isSMobile? 9:13,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
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
                                        setState(() {
                                          isClicked1 = true;
                                          deleteZkr(name: 'azkarElsabah');
                                          azkarElsabah = 0;
                                          Navigator.of(context).pop();
                                        });
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
                            },
                            child: Container(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                              decoration: BoxDecoration(
                                color: isClicked1 == false ? buttonDeleteColor : buttonColorDisabled,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                isClicked1 == false ? 'مسح' : 'تم المسح',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: mainTextColor,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              transformAlignment: Alignment.center,
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 22),
                              decoration: BoxDecoration(
                                  color: boxColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text( azkarElmasaa == null ? 'عدد مرات قراءة أذكار المساء : 0'
                                  : 'عدد مرات قراءة أذكار المساء : $azkarElmasaa',
                                style: TextStyle(
                                  color: mainTextColor,
                                  fontSize: isSMobile? 9:13,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                          GestureDetector(
                            onTap: (){
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
                                        setState(() {
                                          isClicked2 = true;
                                          deleteZkr(name: 'azkarElmasaa');
                                          azkarElmasaa = 0;
                                          Navigator.of(context).pop();
                                        });
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
                            },
                            child: Container(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                              decoration: BoxDecoration(
                                color: isClicked2 == false ? buttonDeleteColor : buttonColorDisabled,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                isClicked2 == false ? 'مسح' : 'تم المسح',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: mainTextColor,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              transformAlignment: Alignment.center,
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 22),
                              decoration: BoxDecoration(
                                  color: boxColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text( azkarSleep == null ? 'عدد مرات قراءة أذكار قبل النوم : 0'
                                  : 'عدد مرات قراءة أذكار قبل النوم : $azkarSleep',
                                style: TextStyle(
                                  color: mainTextColor,
                                  fontSize: isSMobile? 9:13,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                          GestureDetector(
                            onTap: (){
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
                                        setState(() {
                                          isClicked3 = true;
                                          deleteZkr(name: 'azkarSleep');
                                          azkarSleep = 0;
                                          Navigator.of(context).pop();
                                        });
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
                            },
                            child: Container(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                              decoration: BoxDecoration(
                                color: isClicked3 == false ? buttonDeleteColor : buttonColorDisabled,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                isClicked3 == false ? 'مسح' : 'تم المسح',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: mainTextColor,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              transformAlignment: Alignment.center,
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 22),
                              decoration: BoxDecoration(
                                  color: boxColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text( azkarElsalah == null ? 'عدد مرات قراءة أذكار الصلاة : 0'
                                  : 'عدد مرات قراءة أذكار الصلاة : $azkarElsalah',
                                style: TextStyle(
                                  color: mainTextColor,
                                  fontSize: isSMobile? 9:13,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                          GestureDetector(
                            onTap: (){
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
                                        setState(() {
                                          isClicked4 = true;
                                          deleteZkr(name: 'azkarElsalah');
                                          azkarElsalah = 0;
                                          Navigator.of(context).pop();
                                        });
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
                            },
                            child: Container(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                              decoration: BoxDecoration(
                                color: isClicked4 == false ? buttonDeleteColor : buttonColorDisabled,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                isClicked4 == false ? 'مسح' : 'تم المسح',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: mainTextColor,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

    );
  }
}
