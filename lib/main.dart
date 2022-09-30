import 'package:flutter/material.dart';
import 'package:pizzaparty/Lang/LangString.dart';
import 'package:pizzaparty/newlibs/global.dart';
import 'package:pizzaparty/views/splash/splash.dart';
import 'views/page_1/intro.g.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LangString(),
      locale: selected_lang,
      title: 'Pizza Party',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Intro(),
    );
  }
}

