import 'package:flutter/material.dart';
import 'package:train/pages/home_page.dart';



void main(){
  runApp(const AzkarApp());
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

