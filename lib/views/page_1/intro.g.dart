import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pizzaparty/transitions/PageRoute.dart';
import 'package:pizzaparty/views/page_1/people.g.dart';
import 'package:pizzaparty/classes/classes.dart';
import 'package:pizzaparty/widgets/settings_ui.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:lottie/lottie.dart';
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';

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

    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: new Color(0xffffffff),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [new Color(0xffFDB777), new Color(0xffFF6200)])),
        ),
        Container(
          decoration: BoxDecoration(
              color: new Color(0xfffffff),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [Colors.black45, Colors.orange])),
        ),
        Align(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  //obrazel tla
                  width: (MediaQuery.of(context).size.width),
                  height: 600,
                  margin:
                      EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 150),
                  child: Lottie.asset(
                    'assets/json_animations/87237-pizza-preloader.zip',
                    package: 'pizzaparty',
                    fit: BoxFit.contain,
                  )
              ),
            ],
          ),
        ),
        Positioned(
          //glowny box
          left: -50,
          width: (MediaQuery.of(context).size.width) + 100,
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
        Positioned(
          //tytul
          left: 20.0,
          top: 70.0,
          height: 108.0,
          child: Container(
              width: 174.000,
              height: 108.000,
              child: AutoSizeText(
                "Pizza Party",
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 40,
                        height: 0.8,
                        color: Colors.white,
                        fontWeight: FontWeight.w900)),
              )),
        ),
        Container(
          //ile ludzi
          width: double.infinity,
          height: 500,
          margin: EdgeInsets.only(left: 0, top: 300, right: 0, bottom: 0),
          child: Center(
            child: AutoSizeText(
              'intro_message'.tr,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 28,
                      height: 1.2,
                      color: Color(0xff464646),
                      fontWeight: FontWeight.w400)),
            ),
          ),
        ),
        Container(
          //ile ludzi
          width: double.infinity,
          height: 300,
          margin: EdgeInsets.only(left: 10, top: 450, right: 10, bottom: 0),
          child: Center(
              child: AutoSizeText(
            'app_info'.tr,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 19,
                    height: 1.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w800)),
          )),
        ),
        Container(
          //przycisk continue
          width: double.infinity,
          height: 500,
          margin: EdgeInsets.only(left: 0, top: 680, right: 0, bottom: 0),
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
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: new Color(0xffffffff),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            new Color(0xffFDB777),
                            new Color(0xffFD9346)
                          ])),
                  child: Container(
                      width: double.infinity,
                      height: 10,
                      margin: EdgeInsets.only(
                          left: 0, top: 20, right: 0, bottom: 0),
                      child: AutoSizeText(
                        'start_button'.tr,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 27,
                                height: 1.1,
                                color: Colors.white,
                                fontWeight: FontWeight.w900)),
                      )),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MyCustomAnimatedRoute(
                      enterWidget: People(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Container(
          //przycisk menu
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 300, top: 50, right: 0, bottom: 650),
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
                      margin:
                          EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
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
                  }),
            ),
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
