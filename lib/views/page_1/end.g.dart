// *********************************************************************************
// PARABEAC-GENERATED CODE. DO NOT MODIFY.
//
// FOR MORE INFORMATION ON HOW TO USE PARABEAC, PLEASE VISIT docs.parabeac.com
// *********************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class End extends StatefulWidget {
  const End({
    Key? key,
  }) : super(key: key);
  @override
  _End createState() => _End();
}

class _End extends State<End> {
  _End();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffd4ff9d),
      child: Stack(children: [
        Positioned(
          left: 185.0,
          width: 670.0,
          top: 0,
          height: 458.0,
          child: Image.asset(
            'assets/images/3786128removebgpreview1.png',
            package: 'pizzaparty',
            width: 670.000,
            height: 458.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 0,
          width: 784.0,
          top: 405.0,
          height: 527.0,
          child: Container(
            width: 784.000,
            height: 527.000,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
        ),
        Positioned(
          left: 515.0,
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
        Positioned(
          left: 220.0,
          width: 174.0,
          top: 39.0,
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
        Positioned(
          left: 220.0,
          width: 368.0,
          top: 448.0,
          height: 75.0,
          child: Container(
              width: 368.000,
              height: 75.000,
              child: AutoSizeText(
                'You need to order',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0,
                  color: Color(0xff464646),
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 247.0,
          width: 290.0,
          top: 741.0,
          height: 70.0,
          child: Container(
            width: 290.000,
            height: 70.000,
            decoration: BoxDecoration(
              color: Color(0xffd4ff9d),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
        ),
        Positioned(
          left: 258.0,
          width: 55.0,
          top: 748.0,
          height: 55.0,
          child: Image.asset(
            'assets/images/ellipse1.png',
            package: 'pizzaparty',
            width: 55.000,
            height: 55.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 281.0,
          width: 1.5,
          top: 776.0,
          height: 3.0,
          child: SvgPicture.asset(
            'assets/images/arrow1.svg',
            package: 'pizzaparty',
            width: 1.500,
            height: 3.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 339.0,
          width: 145.0,
          top: 758.0,
          height: 36.0,
          child: Container(
              width: 145.000,
              height: 36.000,
              child: AutoSizeText(
                'Recalculate',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 317.0,
          width: 150.0,
          top: 877.0,
          height: 8.0,
          child: SvgPicture.asset(
            'assets/images/line1.svg',
            package: 'pizzaparty',
            width: 150.000,
            height: 8.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 313.0,
          width: 171.0,
          top: 474.0,
          height: 70.0,
          child: Container(
              width: 171.000,
              height: 70.000,
              child: AutoSizeText(
                '2',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 124,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: Color(0xff464646),
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          left: 220.0,
          width: 368.0,
          top: 622.0,
          height: 75.0,
          child: Container(
              width: 368.000,
              height: 75.000,
              child: AutoSizeText(
                'pizzas, for 3 people, 1 slice each, pizza is 8 slices.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0,
                  color: Color(0xff464646),
                ),
                textAlign: TextAlign.center,
              )),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
