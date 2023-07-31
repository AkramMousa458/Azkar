import 'package:flutter/material.dart';
import 'package:train/constants.dart';
import 'package:train/components/zkr.dart';

class AzkarSleepPage extends StatelessWidget {
  const AzkarSleepPage({super.key});

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
                    'أذكار قبل النوم',
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
                  title: '',
                  body:
                      'ِبِاسْمِكَ رَبِّـي وَضَعْـتُ جَنْـبي، وَبِكَ أَرْفَعُـه، فَإِن أَمْسَـكْتَ نَفْسـي فارْحَـمْهــــــــا ، وَإِنْ أَرْسَلْتَـها فاحْفَظْـها بِمـا تَحْفَـظُ بِه عِبـادَكَ الصّـالِحـين.',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                      'اللّهُـمَّ إِنَّـكَ خَلَـقْتَ نَفْسـي وَأَنْـتَ تَوَفّـاهـا لَكَ ممَـاتـها وَمَحْـياها، إِنْ أَحْيَيْـتَها فاحْفَظْـها، وَإِنْ أَمَتَّـها فَاغْفِـرْ لَـها. اللّهُـمَّ إِنَّـي أَسْـأَلُـكَ العـافِـيَة.',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                      'اللّهُـمَّ قِنـي عَذابَـكَ يَـوْمَ تَبْـعَثُ عِبـادَك.',
                  number: 3),
              Zkr(
                  title: '',
                  body:
                      ' باسْمِكَ اللَّهُمَّ أمُوتُ وأَحْيَا.',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                      'الـحَمْدُ للهِ الَّذي أَطْـعَمَنا وَسَقـانا، وَكَفـانا، وَآوانا، فَكَـمْ مِمَّـنْ لا كـافِيَ لَـهُ وَلا مُـؤْوي.',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                  'اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِـرْكِه ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                      'اللّهُـمَّ أَسْـلَمْتُ نَفْـسي إِلَـيْكَ، وَفَوَّضْـتُ أَمْـري إِلَـيْكَ، وَوَجَّـهْتُ وَجْـهي إِلَـيْكَ، وَأَلْـجَـاْتُ ظَهـري إِلَـيْكَ، رَغْبَـةً وَرَهْـبَةً إِلَـيْكَ، لا مَلْجَـأَ وَلا مَنْـجـا مِنْـكَ إِلاّ إِلَـيْكَ، آمَنْـتُ بِكِتـابِكَ الّـذي أَنْزَلْـتَ وَبِنَبِـيِّـكَ الّـذي أَرْسَلْـت.',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                      'يجمع كفيه ثم ينفث فيهما والقراءة فيهما‏:‏ ‏{‏قل هو الله أحد‏}‏ و‏{‏قل أعوذ برب الفلق‏}‏ و‏{‏قل أعوذ برب الناس‏}‏ ومسح ما استطاع من الجسد يبدأ بهما على رأسه ووجه وما أقبل من جسده.',
                  number: 3),
              Zkr(
                  title: 'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ',
                  body:
                      'آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ. [البقرة 285 - 286] \n من قرأ آيتين من آخر سورة البقرة في ليلة كفتاه.',
                  number: 1),
              Zkr(
                  title: 'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيم',
                  body:
                      'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [البقرة 255]',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                      'عن بريدة رضي الله عنه، قال‏:‏ شكا خالد بن الوليد رضي الله عنه إلى النبي صلى الله عليه وسلم فقال‏:‏ يا رسول الله‏!‏ ما أنام الليل من الأرق، فقال النبي صلى الله عليه وسلم‏:‏ ‏"‏إذا أويت إلى فراشك فقل‏:‏ اللهم رب السموات السبع وما أظلت، ورب الأرضين وما أقلت، ورب الشياطين وما أضلت، كن لي جارا من خلقك كلهم جميعا أن يفرط علي أحد منهم أو أن يبغي علي، عز جارك، وجل ثناؤك ولا إله غيرك، ولا إله إلا أنت‏".',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                      'عن عمرو بن شعيب، عن أبيه، عن جده: أن رسول الله صلى الله عليه وسلم كان يعلمهم من الفزع كلمات‏:‏ ‏"‏أعوذ بكلمات الله التامة من غضبه وشر عباده، ومن همزات الشياطين وأن يحضرون‏".',
                  number: 1),
              Zkr(
                  title: '',
                  body:
                      'عن أبي قتادة قال : قَالَ النَّبِيُّ صَلَّى اللَّه عَلَيْهِ وَسَلَّمَ : «الرُّؤْيَا الصَّالِحَةُ مِنَ اللَّهِ وَالْحُلُمُ مِنَ الشَّيْطَانِ فَإِذَا حَلَمَ أَحَدُكُمْ حُلُمًا يَخَافُهُ فَلْيَبْصُقْ عَنْ يَسَارِهِ وَلْيَتَعَوَّذْ بِاللَّهِ مِنْ شَرِّهَا فَإِنَّهَا لا تَضُرُّهُ.',
                  number: 1),
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
                    setZkr(name: 'azkarSleep', num: azkarSleep == null ? 1 : azkarSleep += 1);
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
