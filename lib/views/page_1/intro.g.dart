import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pizzaparty/views/page_1/people.g.dart';
import 'package:pizzaparty/classes/classes.dart';
import 'package:pizzaparty/widgets/settings_ui.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:lottie/lottie.dart';
import 'dart:convert';

class Intro extends StatefulWidget {
  const Intro({
    Key? key,
  }) : super(key: key);
  @override
  _Intro createState() => _Intro();
}

class _Intro extends State<Intro> {
  _Intro();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Material(
      color: Colors.orange[300],
      child: Stack(children: [
        Container( //obrazel tla
          width: double.infinity,
          height: 600,
          margin: EdgeInsets.only(left: 0, top:0, right: 0, bottom:0),
              child: Lottie.asset('assets/json_animations/87237-pizza-preloader.json', package: 'pizzaparty')
        ),
        Positioned( //glowny box
          left: -50,
          width: (MediaQuery.of(context).size.width)+100,
          top: 410.0,
          height: 600.0,
          child: Container(
            width: 414.000,
            height: 447.000,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(250.0)),
            ),
          ),
        ),
        Positioned( //tytul
          left: 35.0,
          width: 174.0,
          top: 50.0,
          height: 108.0,
          child: Container(
              width: 174.000,
              height: 108.000,
              child: AutoSizeText(
                '',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              )),
        ),
        Container( //ile ludzi
          width: double.infinity,
          height: 500,
          margin: EdgeInsets.only(left: 0, top:300, right: 0, bottom:0),
          child: Center(
              child: AutoSizeText(
                'intro_message'.tr,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0,
                  color: Color(0xff464646),
                ),
                textAlign: TextAlign.center,
              )
          ),
        ),
        Container( //ile ludzi
          width: double.infinity,
          height: 300,
          margin: EdgeInsets.only(left: 10, top:450, right: 10, bottom:0),
          child: Center(
              child: AutoSizeText(
                'app_info'.tr,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              )
          ),
        ),
        Container( //przycisk continue
          width: double.infinity,
          height: 500,
          margin: EdgeInsets.only(left: 0, top:680, right: 0, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Colors.orange.withOpacity(0.3),
                splashColor: Colors.orange.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 290.000,
                  height: 70.000,
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Container(
                      width: double.infinity,
                      height: 10,
                      margin: EdgeInsets.only(left: 0, top:20, right: 0, bottom:0),
                      child: AutoSizeText(
                        'start_button'.tr,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      )
                  ),
                ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const People()),
                    );
                  }
              ),
            ),
          ),
        ),
        Container( //przycisk menu
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 300, top:50, right: 0, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                  highlightColor: Colors.orange.withOpacity(0.3),
                  splashColor: Colors.orange.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 70.000,
                    height: 70.000,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.6),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Container(
                        width: double.infinity,
                        height: 10,
                        margin: EdgeInsets.only(left: 0, top:0, right: 0, bottom:0),
                      child: Icon(
                        Icons.menu_outlined,
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      CustomPageRoute(child: Settingsmenu()),
                    );
                  }
              ),
            ),
          ),
        ),
      ]
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
