import 'package:flutter/material.dart';
import 'package:train/variables.dart';
import 'package:train/pages/azkar_elsabah_page.dart';
import 'package:train/pages/azkar_elmasaa_page.dart';
import 'package:train/pages/azkar_elsalah_page.dart';
import 'package:train/pages/azkar_sleep_page.dart';
import '../components/azkar_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 0),
        child: Column(
          textDirection: TextDirection.rtl,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
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
              textDirection: TextDirection.rtl,
              children: [
                Column(
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
                      child: Text( azkarElsabah == null?
                        'عدد مرات قراءة أذكار الصباح : 0'
                        : 'عدد مرات قراءة أذكار الصباح : $azkarElsabah',
                        style: const TextStyle(
                          color: mainTextColor,
                          fontSize: 13,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
                              style: const TextStyle(
                                color: mainTextColor,
                                fontSize: 13,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                              ),
                            )
                            ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding:
                      const EdgeInsets.only(right: 15, bottom: 47, left: 15),
                  decoration: BoxDecoration(
                      color: boxColor, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      ConstrainedBox(
                          constraints: const BoxConstraints(minHeight: 22)),
                      Text( azkarSleep == null ? '0' : '$azkarSleep',
                        style: const TextStyle(
                            color: mainTextColor,
                            fontSize: 40,
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
                GestureDetector(
                  onTap: (){
                    setState(() {
                      isClicked = true;
                      SharedData.getZkr(name: 'azkarElsabah');
                      SharedData.getZkr(name: 'azkarElmasaa');
                      SharedData.getZkr(name: 'azkarSleep');
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: BoxDecoration(
                      color: isClicked == false ? buttonColor : buttonColorDisabled,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      isClicked == false ? 'الإحصائيات' : 'تم عرض الإحصائيات',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12,
                          color: mainTextColor,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold),
                    ),
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
                        onPressed: () {},
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
                          SharedData.getZkr(name: 'azkarElsabah');
                        });
                      });
                    }
                    ),
                AzkarBox(
                    text: 'أذكار المساء',
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                        builder: (context) => const AzkarElmasaaPage(),
                      ))
                          .then((value) {
                        setState(() {
                          SharedData.getZkr(name: 'azkarElmasaa');
                        });
                      });
                    }
                    )
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
                          SharedData.getZkr(name: 'azkarElsalah');
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
                          SharedData.getZkr(name: 'azkarSleep');
                        });
                      });
                    }),
              ],
            ),
            // Container(height: 80),
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
    );
  }
}
