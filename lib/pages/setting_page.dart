import 'package:flutter/material.dart';
import 'package:train/components/delete_button.dart';
import 'package:train/components/delete_dialog_box.dart';
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
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 0),
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
                          child: Text(
                            azkarElsabah != null
                                ? 'عدد مرات قراءة أذكار الصباح : $azkarElsabah'
                                : 'عدد مرات قراءة أذكار الصباح : 0',
                            style: TextStyle(
                              color: mainTextColor,
                              fontSize: isSMobile ? 9 : 13,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DeleteButton(isClicked: isClicked1, onTap: (){
                          deleteDialogBox(context, () {
                            setState(() {
                              isClicked1 = true;
                              deleteZkr(name: 'azkarElsabah');
                              azkarElsabah = 0;
                              Navigator.of(context).pop();
                            });
                          });
                        })
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
                            child: Text(
                              azkarElmasaa == null
                                  ? 'عدد مرات قراءة أذكار المساء : 0'
                                  : 'عدد مرات قراءة أذكار المساء : $azkarElmasaa',
                              style: TextStyle(
                                color: mainTextColor,
                                fontSize: isSMobile ? 9 : 13,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        DeleteButton(isClicked: isClicked2, onTap: (){
                          deleteDialogBox(context, () {
                            setState(() {
                              isClicked2 = true;
                              deleteZkr(name: 'azkarElmasaa');
                              azkarElmasaa = 0;
                              Navigator.of(context).pop();
                            });
                          });
                        })
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
                            child: Text(
                              azkarSleep == null
                                  ? 'عدد مرات قراءة أذكار قبل النوم : 0'
                                  : 'عدد مرات قراءة أذكار قبل النوم : $azkarSleep',
                              style: TextStyle(
                                color: mainTextColor,
                                fontSize: isSMobile ? 9 : 13,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        DeleteButton(isClicked: isClicked3, onTap: (){
                          deleteDialogBox(context, () {
                            setState(() {
                              isClicked3 = true;
                              deleteZkr(name: 'azkarSleep');
                              azkarSleep = 0;
                              Navigator.of(context).pop();
                            });
                          });
                        })
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
                            child: Text(
                              azkarElsalah == null
                                  ? 'عدد مرات قراءة أذكار الصلاة : 0'
                                  : 'عدد مرات قراءة أذكار الصلاة : $azkarElsalah',
                              style: TextStyle(
                                color: mainTextColor,
                                fontSize: isSMobile ? 9 : 13,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        DeleteButton(
                            isClicked: isClicked4,
                            onTap: () {
                              deleteDialogBox(context, () {
                                setState(() {
                                  isClicked4 = true;
                                  deleteZkr(name: 'azkarElsalah');
                                  azkarElsalah = 0;
                                  Navigator.of(context).pop();
                                });
                              });
                            }),
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
