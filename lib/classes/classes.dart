import 'package:flutter/material.dart';
import 'package:pizzaparty/newlibs/global.dart';

class CustomPageRoute extends PageRouteBuilder { //wejscie menu
  final Widget child;

  CustomPageRoute({
    required this.child,
  }) : super(
    transitionDuration: Duration(milliseconds: 200),
    pageBuilder: (context, animation, secondaryAnimation) => child,
  );
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
}

class CustomPageRouteExit extends PageRouteBuilder { //wyjscie menu
  final Widget child;

  CustomPageRouteExit({
    required this.child,
  }) : super(
    transitionDuration: Duration(milliseconds: 200),
    pageBuilder: (context, animation, secondaryAnimation) => child,
  );
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
}


void Calc_pizza() {
    o = people_counter*slices_counter;
    for (summary = 0; slices < o; summary++) {
      slices = slices + size_counter;
    };
}