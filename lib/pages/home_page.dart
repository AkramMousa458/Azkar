import 'package:flutter/material.dart';
import 'package:train/pages/setting_page.dart';
import 'package:train/constants.dart';
import 'package:train/pages/azkar_elsabah_page.dart';
import 'package:train/pages/azkar_elmasaa_page.dart';
import 'package:train/pages/azkar_elsalah_page.dart';
import 'package:train/pages/azkar_sleep_page.dart';
import '../components/azkar_category.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    setState(() {
      getZkr(name: 'azkarElsabah');
      getZkr(name: 'azkarElmasaa');
      getZkr(name: 'azkarSleep');
      getZkr(name: 'azkarElsalah');
    });
    Future.delayed(Duration.zero, () => showStartDialog(context));
  }

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final isSMobile = MediaQuery.of(context).size.width <= 360;
    final isMMobile = MediaQuery.of(context).size.width <= 390;

    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 30, bottom: 0),
              child: Column(
                textDirection: TextDirection.rtl,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(
                              builder: (context) => const SettingPage(),
                            ))
                                .then((value) {
                              setState(() {
                                getZkr(name: 'azkarElsabah');
                                getZkr(name: 'azkarElmasaa');
                                getZkr(name: 'azkarSleep');
                              });
                            });
                          },
                          icon: const Icon(
                            Icons.settings_outlined,
                            size: 25,
                            color: mainTextColor,
                          )),
                      const Text(
                        'الأذكار',
                        style: TextStyle(
                            color: mainTextColor,
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold),
                      ),
                      const Text('             ')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        textDirection: TextDirection.rtl,
                        children: [
                          Container(
                            constraints: const BoxConstraints(maxWidth: 250),
                            transformAlignment: Alignment.center,
                            margin: const EdgeInsets.only(
                                left: 10, right: 0, top: 10, bottom: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 22),
                            decoration: BoxDecoration(
                                color: boxColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              azkarElsabah == null
                                  ? 'عدد مرات قراءة أذكار الصباح : 0'
                                  : 'عدد مرات قراءة أذكار الصباح : $azkarElsabah',
                              style: TextStyle(
                                color: mainTextColor,
                                fontSize: isSMobile ? 10 : 13,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              transformAlignment: Alignment.center,
                              margin: const EdgeInsets.only(
                                  left: 10, right: 0, top: 10, bottom: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 22),
                              decoration: BoxDecoration(
                                  color: boxColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                azkarElmasaa == null
                                    ? 'عدد مرات قراءة أذكار المساء : 0'
                                    : 'عدد مرات قراءة أذكار المساء : $azkarElmasaa',
                                style: TextStyle(
                                  color: mainTextColor,
                                  fontSize: isSMobile ? 10 : 13,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          right: 15,
                          bottom: 55,
                          left: 15,
                        ),
                        decoration: BoxDecoration(
                            color: boxColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            isMMobile
                                ? ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(minHeight: 45))
                                : ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(minHeight: 10)),
                            Text(
                              azkarSleep == null ? '0' : '$azkarSleep',
                              style: TextStyle(
                                  color: mainTextColor,
                                  fontSize: isMMobile ? 25 : 40,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '  أذكار قبل النوم  ',
                              style: TextStyle(
                                color: mainTextColor,
                                fontSize: 10,
                                height: 1.5,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      const Text(
                        textDirection: TextDirection.rtl,
                        'اذكر الله :',
                        style: TextStyle(
                          color: mainTextColor,
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          const Text(
                            textDirection: TextDirection.rtl,
                            'أذكار أخري',
                            style: TextStyle(
                                color: mainTextColor,
                                fontSize: 12,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text(
                                          'أذكار اخري',
                                          style: TextStyle(
                                            color: mainTextColor,
                                            fontSize: 20,
                                            fontFamily: 'Cairo',
                                          ),
                                          textDirection: TextDirection.rtl,
                                        ),
                                        content: const Text(
                                          'لم يتم إضافتها بعد',
                                          style: TextStyle(
                                            color: mainTextColor,
                                            fontSize: 16,
                                            fontFamily: 'Cairo',
                                          ),
                                          textDirection: TextDirection.rtl,
                                        ),
                                        backgroundColor: boxColor,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 5),
                                        actionsPadding: const EdgeInsets.only(
                                            top: 10, right: 10, bottom: 20),
                                        actions: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16,
                                                      vertical: 5),
                                              decoration: BoxDecoration(
                                                color: buttonColor,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: const Text(
                                                'حسناََ',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: mainTextColor,
                                                    fontFamily: 'Cairo',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              icon: const Icon(
                                Icons.arrow_left_rounded,
                                size: 30,
                                color: mainTextColor,
                              ))
                        ],
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                      AzkarBox(
                          text: 'أذكار الصباح',
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(
                              builder: (context) => const AzkarElsabahPage(),
                            ))
                                .then((value) {
                              setState(() {
                                getZkr(name: 'azkarElsabah');
                              });
                            });
                          }),
                      AzkarBox(
                          text: 'أذكار المساء',
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(
                              builder: (context) => const AzkarElmasaaPage(),
                            ))
                                .then((value) {
                              setState(() {
                                getZkr(name: 'azkarElmasaa');
                              });
                            });
                          })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                      AzkarBox(
                          text: 'أذكار الصـلاة',
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(
                              builder: (context) => const AzkarElsalahPage(),
                            ))
                                .then((value) {
                              setState(() {
                                getZkr(name: 'azkarElsalah');
                              });
                            });
                          }),
                      AzkarBox(
                          text: 'أذكار النــوم',
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(
                              builder: (context) => const AzkarSleepPage(),
                            ))
                                .then((value) {
                              setState(() {
                                getZkr(name: 'azkarSleep');
                              });
                            });
                          }),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(20),
                    alignment: Alignment.bottomCenter,
                    child: const Text(
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      'وَالذَّاكِرِينَ اللَّهَ كَثِيرًا وَالذَّاكِرَاتِ أَعَدَّ اللَّهُ لَهُمْ مَغْفِرَةً وَأَجْرًا عَظِيمًا [الأحزاب:35]'
                      '\n\nإصدار تجريبي V1.0',
                      style: TextStyle(
                          color: Color(0xFF2b3d4f),
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  void showStartDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              'مرحباََ',
              style: TextStyle(
                color: mainTextColor,
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            content: const Text(
              'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ سُبْحَانَ اللَّه الْعَظِيم',
              style: TextStyle(
                color: mainTextColor,
                fontSize: 16,
                fontFamily: 'Cairo',
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            backgroundColor: boxColor,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            actionsPadding:
                const EdgeInsets.only(top: 10, right: 10, bottom: 20),
            actions: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    getZkr(name: 'azkarElsabah');
                    getZkr(name: 'azkarElmasaa');
                    getZkr(name: 'azkarSleep');
                    getZkr(name: 'azkarElsalah');
                  });
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
                    'تم',
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
}
