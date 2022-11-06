import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pizzaparty/newlibs/global.dart';
import 'package:pizzaparty/transitions/PageRoute.dart';
import 'package:pizzaparty/views/page_1/slices.g.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

Future<Widget> buildPageAsync() async {
  return Future.microtask(() {
    return People();
  });
}



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

    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: new Color(0xffffffff),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    new Color(0xffE8B3BB),
                    new Color(0xffEC5653)
                  ])
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
                  height: 400,
                  margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 250),
                  child: Lottie.asset(
                    'assets/json_animations/38964-group-of-people-communicating.zip',
                    package: 'pizzaparty',
                    fit: BoxFit.contain,
                  )),
            ],
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
          height: 500,
          margin: EdgeInsets.only(left: 0, top:300, right: 0, bottom:0),
          child: Center(
              child: AutoSizeText(
                'how_many_people'.tr,
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
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: new Color(0xffffffff),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [new Color(0xffE8B3BB), new Color(0xffCF4A47)])
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
                Navigator.of(context).push(
                  MyCustomAnimatedRoute(
                    enterWidget: Slices(),
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
                      colors: [new Color(0xffE8B3BB), new Color(0xffCF4A47)])
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
          margin: EdgeInsets.only(left: 120, top:500, right: 0, bottom:0),
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
          margin: EdgeInsets.only(left: 0, top:500, right: 120, bottom:0),
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
