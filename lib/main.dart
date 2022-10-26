// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/Language_/language_.dart';
import 'package:localization/Localization_/localization_.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Language(),
      // locale: Get.deviceLocale,        //* device এর language অনুযায়ি হবে
      locale: Locale('en', 'US'), //* initially locale set করা হল
      fallbackLocale: Locale('en',
          'US'), //* যদি কোন কারনে locale কাজ না করে তবে fallbackLocale কাজ করবে
      title: 'Flutter Demo',
      initialRoute: Localization_.path,
      routes: {
        Localization_.path: (context) => Localization_(),
      },
    );
  }
}


/*
git remote add origin git@github.com:NazmulHasan0/localization.git
*/