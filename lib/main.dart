import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:train/pages/home_page.dart';



// void main(){
//   runApp(const AzkarApp());
// }
//
// class AzkarApp extends StatelessWidget {
//   const AzkarApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Azkar|أذكار',
//         debugShowCheckedModeBanner: false,
//         home: HomePage(),
//     );
//   }
// }



void main(){
  runApp(DevicePreview(builder: (context)=> const AzkarApp()));
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Azkar|أذكار',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
