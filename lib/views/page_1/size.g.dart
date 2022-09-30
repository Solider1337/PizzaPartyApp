import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pizzaparty/Lang/LangString.dart';
import 'package:pizzaparty/classes/classes.dart';
import 'package:pizzaparty/views/page_1/end.g.dart';
import 'package:pizzaparty/newlibs/global.dart';
import 'package:lottie/lottie.dart';

class Size extends StatefulWidget {
  const Size({
    Key? key,
  }) : super(key: key);
  @override
  _Size createState() => _Size();
}



class _Size extends State<Size> {
  _Size();

  void _incrementCounter() {
  setState(() {
  if(size_counter<99)
  size_counter++;
  });
  }

  void _decrementCounter() {
  setState(() {
  if(size_counter>1)
  size_counter--;
  });
  }







  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Material(
      color: Colors.amber[300],
      child: Stack(children: [
        Container( //obrazel tla
          width: double.infinity,
          height: 430,
          margin: EdgeInsets.only(left: 0, top:0, right: 0, bottom:0),
          child: Center(
            child: Lottie.asset('assets/json_animations/64809-pizza-loading.json', package: 'pizzaparty')
          ),
        ),
        Positioned( //glowny box
          left: -50,
          width: (MediaQuery.of(context).size.width)+100,
          top: 330.0,
          height: 700.0,
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
          height: 200,
          margin: EdgeInsets.only(left: 0, top:350, right: 0, bottom:0),
          child: Center(
              child: AutoSizeText(
                'how_many_pieces'.tr,
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
          height: 100,
          margin: EdgeInsets.only(left: 10, top:545, right: 10, bottom:0),
          child: Center(
              child: AutoSizeText(
                'popular_size'.tr,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              )
          ),
        ),
        Container( //ile ludzi
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 10, top:450, right: 10, bottom:0),
          child: Center(
              child: AutoSizeText(
                'how_many_pieces_2'.tr,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
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
                highlightColor: Colors.amber.withOpacity(0.3),
                splashColor: Colors.yellow.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 290.000,
                  height: 70.000,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.6),
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
                  Calc_pizza();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const End()),
                  );
                },
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
                color: Colors.amber[200],
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
                  '$size_counter',
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
                highlightColor: Colors.amber.withOpacity(0.3),
                splashColor: Colors.amber.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  _incrementCounter();
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/ellipse1_1.png',
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
                highlightColor: Colors.amber.withOpacity(0.3),
                splashColor: Colors.amber.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  _decrementCounter();
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/ellipse2_1.png',
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
          margin: EdgeInsets.only(left: 120, top:595, right: 0, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Colors.amber.withOpacity(0.3),
                splashColor: Colors.amber.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  _incrementCounter();
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/ellipse1_1.png',
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
          height: 100,
          margin: EdgeInsets.only(left: 0, top:500, right: 200, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Colors.amber.withOpacity(0.3),
                splashColor: Colors.amber.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  setState(() {
                    size_counter = 6;
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/size_s.png',
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
          height: 100,
          margin: EdgeInsets.only(left: 0, top:500, right: 70, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Colors.amber.withOpacity(0.3),
                splashColor: Colors.amber.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  setState(() {
                    size_counter = 8;
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/size_m.png',
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
          height: 100,
          margin: EdgeInsets.only(left: 70, top:500, right: 0, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Colors.amber.withOpacity(0.3),
                splashColor: Colors.amber.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  setState(() {
                    size_counter = 10;
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/size_l.png',
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
          height: 100,
          margin: EdgeInsets.only(left: 200, top:500, right: 0, bottom:0),
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Colors.amber.withOpacity(0.3),
                splashColor: Colors.amber.withOpacity(0.9),
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  setState(() {
                      size_counter = 12;
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/images/size_xl.png',
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
