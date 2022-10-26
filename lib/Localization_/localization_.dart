// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localization_ extends StatelessWidget {
  static const String path = 'Localization_';
  const Localization_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Localization"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'app_name'.tr,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'app_title'.tr,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              },
              child: Text('English Button'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('bn', 'BD'));
              },
              child: Text('Bangla Button'),
            ),
          ],
        ),
      ),
    );
  }
}


/*
pub.dev থেকে getx ependencies টা add করে নিতে হবে
get: ^4.6.5

Language Folder এর কাজ করতে হবে
https://saimana.com/list-of-country-locale-code/

main.dart এ গিয়ে
MaterialApp() এর পরিবর্তে GetMaterialApp() use করতে হবে

localization_.dart File এ কাজ করতে হবে

তবে এইভাবে language select করলে data store হবে না
অর্থাৎ App টা off করে on করলে আবার পূর্বের language এ ফিরে যাবে
*/