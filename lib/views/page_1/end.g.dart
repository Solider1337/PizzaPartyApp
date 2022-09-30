import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pizzaparty/views/page_1/intro.g.dart';
import 'package:pizzaparty/newlibs/global.dart';
import 'package:lottie/lottie.dart';

class End extends StatefulWidget {
  const End({
    Key? key,
  }) : super(key: key);
  @override
  _End createState() => _End();
}

class _End extends State<End> {
  _End();

  String stringx = 'x';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Material(
      color: Color.fromRGBO(175, 199, 201, 1.0),
      child: Stack(children: [
        Container( //obrazel tla
          width: double.infinity,
          height: 500,
          margin: EdgeInsets.only(left: 0, top:0, right: 0, bottom:0),
          child: Center(
            child: Lottie.asset('assets/json_animations/90016-order-food.json', package: 'pizzaparty')
            //Lottie.network('https://assets7.lottiefiles.com/private_files/lf30_ngjk4cxr.json'),
          ),
        ),
        Positioned( //glowny box
          left: -50,
          width: (MediaQuery.of(context).size.width)+100,
          top: 400.0,
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
          left: 290.0,
          width: 174.0,
          top: 55.0,
          height: 108.0,
          child: Container(
              width: 174.000,
              height: 108.000,
              child: AutoSizeText(
                'Pizza Party',
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
          height: 400,
          margin: EdgeInsets.only(left: 0, top:270, right: 0, bottom:0),
          child: Center(
              child: AutoSizeText(
                'need_to_order'.tr,
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
          height: 400,
          margin: EdgeInsets.only(left: 0, top:500, right: 0, bottom:0),
          child: Center(
              child: AutoSizeText(
                'pizza_result'.tr + ' $people_counter' + 'peoples_result'.tr + ' $slices_counter' + 'slicesforeach_result'.tr + ' $size_counter' + 'slices_result'.tr,

                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0,
                  color: Color(0xff464646),
                ),
                textAlign: TextAlign.center,
              )
          ),
        ),
        Container( //przycisk recalculate
          width: double.infinity,
          height: 500,
          margin: EdgeInsets.only(left: 0, top:680, right: 0, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Color.fromRGBO(175, 199, 201, 0.3),
                splashColor: Color.fromRGBO(175, 199, 201, 0.9),
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 290.000,
                  height: 70.000,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(175, 199, 201, 0.6),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Container(
                      width: double.infinity,
                      height: 10,
                      margin: EdgeInsets.only(left: 0, top:20, right: 0, bottom:0),
                      child: AutoSizeText(
                        'recalculate'.tr,
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
                  o = 0;
                  summary = 0;
                  slices = 0;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Intro()),
                  );
                },
              ),
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: 300,
          margin: EdgeInsets.only(left: 0, top:400, right: 0, bottom:0),
          child: Center(
            child: Container(
                width: 120.000,
                height: 120.000,
                child: AutoSizeText(
                  '$summary$stringx',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 132,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                    color: Color(0xff464646),
                  ),
                  textAlign: TextAlign.center,
                )
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
