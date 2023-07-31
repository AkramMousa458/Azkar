// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const backgroundColor = Color(0xff16202a);

const mainTextColor = Colors.white;
const secondTextColor = Colors.blueGrey;

const buttonColor = Color(0xFF2966a3);
const buttonColorDisabled = Colors.black12;
const buttonDeleteColor = Colors.redAccent;

const boxColor = Color(0xFF192734);

var azkarElsabah;
var azkarElmasaa;
var azkarElsalah;
var azkarSleep;

class SharedData{

  static late SharedPreferences prefs;

  static void setZkr({required String name, required int num}) async{
    prefs = await SharedPreferences.getInstance();
    await prefs.setInt(name, num);
  }

  static void getZkr({required String name}) async {
    prefs = await SharedPreferences.getInstance();
    switch (name) {
      case 'azkarElsabah' :
        azkarElsabah = prefs.getInt('azkarElsabah');
        break;
      case 'azkarElmasaa' :
        azkarElmasaa = prefs.getInt('azkarElmasaa');
        break;
      case 'azkarElsalah' :
        azkarElsalah = prefs.getInt('azkarElsalah');
        break;
      case 'azkarSleep' :
        azkarSleep = prefs.getInt('azkarSleep');
        break;
    }
}

  static void deleteZkr({required String name}) async {
    prefs = await SharedPreferences.getInstance();
    switch (name) {
      case 'azkarElsabah' :
        await prefs.setInt('azkarElsabah', 0);
        break;
      case 'azkarElmasaa' :
        await prefs.setInt('azkarElmasaa', 0);
        break;
      case 'azkarElsalah' :
        await prefs.setInt('azkarElsalah', 0);
        break;
      case 'azkarSleep' :
        await prefs.setInt('azkarSleep', 0);
        break;
    }
}


}
