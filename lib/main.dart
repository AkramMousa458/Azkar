import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:train/noti.dart';
import 'package:train/pages/home_page.dart';

void main() async {
  Timer.periodic(const Duration(hours: 6), (Timer timer) {
    Noti.initialize(flutterLocalNotificationsPlugin);
    Noti.showNotification(
      title: 'Azkar|أذكار',
      body: 'لا تنسي قراءة أذكار الصباح',
      fln: flutterLocalNotificationsPlugin,
    );
  });
  runApp(const AzkarApp());
  // runApp(DevicePreview(builder: (context)=> const AzkarApp()));
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Azkar|أذكار',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
