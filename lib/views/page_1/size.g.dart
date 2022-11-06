import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizzaparty/Lang/LangString.dart';
import 'package:pizzaparty/classes/classes.dart';
import 'package:pizzaparty/transitions/PageRoute.dart';
import 'package:pizzaparty/views/page_1/end.g.dart';
import 'package:pizzaparty/newlibs/global.dart';
import 'package:lottie/lottie.dart';
import 'package:pizzaparty/views/page_1/people.g.dart';

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

    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: new Color(0xffffffff),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [new Color(0xffFCA6D1), new Color(0xffC091DB)])
          ),
        ),
        Align(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //obrazel tla
                  width: (MediaQuery.of(context).size.width),
                  height: 700,
                  margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 200),
                  child: Lottie.asset(
                    'assets/json_animations/64809-pizza-loading.zip',
                    package: 'pizzaparty',
                    fit: BoxFit.fitWidth,
                  )),
            ],
          ),
        ),
        Positioned( //glowny box
          left: -50,
          width: (MediaQuery.of(context).size.width)+100,
          top: 320.0,
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
              )
          ),
        ),
        Container( //ile ludzi
          width: double.infinity,
          height: 200,
          margin: EdgeInsets.only(left: 0, top:50, right: 0, bottom:0),
          child: Center(
              child: AutoSizeText(
                'how_many_pieces'.tr,
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
        Container( //ile ludzi
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 10, top:380, right: 10, bottom:0),
          child: Center(
              child: AutoSizeText(
                'popular_size'.tr,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 16,
                        height: 1.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w800)),
              )
          ),
        ),
        Container( //ile ludzi
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 10, top:170, right: 10, bottom:0),
          child: Center(
              child: AutoSizeText(
                'how_many_pieces_2'.tr,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 16,
                        height: 1.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w800)),
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
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: new Color(0xffffffff),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [new Color(0xffFCA6D1), new Color(0xffC091DB)])
                  ),
                  child: Container(
                      width: double.infinity,
                      height: 10,
                      margin: EdgeInsets.only(left: 0, top:20, right: 0, bottom:0),
                      child: AutoSizeText(
                        'continue'.tr,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 27,
                                height: 1.1,
                                color: Colors.white,
                                fontWeight: FontWeight.w900)),
                      )
                  ),
                ),
                onTap: () {
                  Calc_pizza();
                  Navigator.of(context).push(
                    MyCustomAnimatedRoute(
                      enterWidget: End(),
                    ),
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
          margin: EdgeInsets.only(left: 0, top:500, right: 0, bottom:0),
          child: Center(
            child: Container(
              width: 190.000,
              height: 70.000,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: new Color(0xffffffff),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [new Color(0xffFCA6D1), new Color(0xffC091DB)])
              ),
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 0, top:510, right: 0, bottom:0),
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
          margin: EdgeInsets.only(left: 120, top:500, right: 0, bottom:0),
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
          margin: EdgeInsets.only(left: 0, top:500, right: 120, bottom:0),
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


        //rozmiary

        Container(
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.only(left: 0, top:300, right: 200, bottom:0),
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
          margin: EdgeInsets.only(left: 0, top:300, right: 70, bottom:0),
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
          margin: EdgeInsets.only(left: 70, top:300, right: 0, bottom:0),
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
          margin: EdgeInsets.only(left: 200, top:300, right: 0, bottom:0),
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
