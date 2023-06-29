import 'package:flutter/material.dart';

class Navigation {
  static goTo(Widget page) {
    return MaterialPageRoute(builder: (context) => page);
    ;
  }
}
