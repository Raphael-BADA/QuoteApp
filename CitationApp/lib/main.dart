import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const mainColor = MaterialColor(
      0xFFFA5A23,
      <int, Color>{
        50: Color(0xFFFFF3EF),
        100: Color(0xFFFFE0D1),
        200: Color(0xFFFFC7AF),
        300: Color(0xFFFFAD8C),
        400: Color(0xFFFF9A71),
        500: Color(0xFFFA5A23),
        600: Color(0xFFF14F20),
        700: Color(0xFFEA441D),
        800: Color(0xFFE13A1A),
        900: Color(0xFFD22715),
      },
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RestoApp',
      theme: ThemeData(
        primarySwatch: mainColor,
      ),
      home: MainScreen(),
    );
  }
}
