import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pizzaparty/newlibs/global.dart';
import 'package:pizzaparty/views/page_1/slices.g.dart';
import 'package:lottie/lottie.dart';

class People extends StatefulWidget {
  const People({
    Key? key,
  }) : super(key: key);
  @override
  _People createState() => _People();
}

class _People extends State<People> {
  _People();


  void _incrementCounter() {
    setState(() {
      if(people_counter<99)
      people_counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if(people_counter>1)
        people_counter--;
    });
  }



  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Material(
      color: Color(0xffff9692),
      child: Stack(children: [
        Container( //obrazel tla
          width: double.infinity,
          height: 670,
          margin: EdgeInsets.only(left: 0, top:0, right: 0, bottom:0),
          child: Center(
            child: Lottie.asset('assets/json_animations/29774-dance-party.json', package: 'pizzaparty')
          ),
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
        Positioned( //lapki kotka
          left: 330.0,
          width: 64.0,
          top: 39.0,
          height: 64.0,
          child: Container(
              clipBehavior: Clip.hardEdge,
              width: 64.000,
              height: 64.000,
              decoration: BoxDecoration(),
              child: Stack(children: [
                Positioned(
                  left: 1.964,
                  width: 60.1,
                  top: 7.596,
                  height: 48.732,
                  child: SvgPicture.asset(
                    'assets/images/group.svg',
                    package: 'pizzaparty',
                    width: 60.100,
                    height: 48.732,
                    fit: BoxFit.none,
                  ),
                ),
              ])),
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
          height: 500,
          margin: EdgeInsets.only(left: 0, top:300, right: 0, bottom:0),
          child: Center(
              child: AutoSizeText(
                'how_many_people'.tr,
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
        Container( //przycisk continue
          width: double.infinity,
          height: 500,
          margin: EdgeInsets.only(left: 0, top:680, right: 0, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.red.withOpacity(0.3),
              splashColor: Colors.red.withOpacity(0.9),
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 290.000,
                height: 70.000,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.6),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Container(
                  width: double.infinity,
                  height: 10,
                  margin: EdgeInsets.only(left: 0, top:20, right: 0, bottom:0),
                  child: AutoSizeText(
                    'continue'.tr,
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
                    MaterialPageRoute(builder: (context) => const Slices()),
                  );
                }
            ),
            ),
          ),
        ),

        // wszystko w 1 kontener

        Container(
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 0, top:600, right: 0, bottom:0),
          child: Center(
            child: Container(
              width: 190.000,
              height: 70.000,
              decoration: BoxDecoration(
                color: Color(0xe0ffa4a0),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 0, top:605, right: 0, bottom:0),
          child: Center(
            child: Container(
                width: 171.000,
                height: 70.000,
                child: AutoSizeText(
                  '$people_counter',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: 110,
          margin: EdgeInsets.only(left: 120, top:595, right: 0, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
            child: InkWell(
              highlightColor: Colors.red.withOpacity(0.3),
              splashColor: Colors.red.withOpacity(0.9),
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                _incrementCounter();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  'assets/images/ellipse1.png',
                  package: 'pizzaparty',
                  width: 70.000,
                  height: 70.000,
                  fit: BoxFit.none,
                ),
              ),
            ),
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: 110,
          margin: EdgeInsets.only(left: 0, top:595, right: 120, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Colors.red.withOpacity(0.3),
                splashColor: Colors.red.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  _decrementCounter();
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/ellipse2.png',
                    package: 'pizzaparty',
                    width: 70.000,
                    height: 70.000,
                    fit: BoxFit.none,
                  ),
                ),
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
