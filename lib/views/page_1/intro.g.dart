// *********************************************************************************
// PARABEAC-GENERATED CODE. DO NOT MODIFY.
//
// FOR MORE INFORMATION ON HOW TO USE PARABEAC, PLEASE VISIT docs.parabeac.com
// *********************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
    return Material(
      color: Color(0xfff2c673),
      child: Stack(children: [
        Positioned(
          left: 160.0,
          width: 464.0,
          top: 147.0,
          height: 379.0,
          child: Image.asset(
            'assets/images/3786128removebgpreview1.png',
            package: 'pizzaparty',
            width: 464.000,
            height: 379.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 0,
          width: 784.0,
          top: 470.0,
          height: 426.0,
          child: Container(
            width: 784.000,
            height: 426.000,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
        ),
        Positioned(
          left: 517.0,
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
          left: 267.0,
          width: 250.0,
          top: 526.0,
          height: 84.0,
          child: Container(
              width: 250.000,
              height: 84.000,
              child: AutoSizeText(
                'Let\'s make a great pizza party',
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
          top: 634.0,
          height: 54.0,
          child: Container(
              width: 290.000,
              height: 54.000,
              child: AutoSizeText(
                'By clicking Get Started you accept the privacy policy.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0,
                  color: Color(0xff949494),
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
              color: Color(0xfff2c673),
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
          left: 289.0,
          width: 1.0,
          top: 776.0,
          height: 3.0,
          child: SvgPicture.asset(
            'assets/images/arrow1.svg',
            package: 'pizzaparty',
            width: 1.000,
            height: 3.000,
            fit: BoxFit.none,
          ),
        ),
        Positioned(
          left: 343.0,
          width: 139.0,
          top: 758.0,
          height: 36.0,
          child: Container(
              width: 139.000,
              height: 36.000,
              child: AutoSizeText(
                'Get Started',
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
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
