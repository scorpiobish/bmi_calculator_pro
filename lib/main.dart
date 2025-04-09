import 'package:bmi_calculator_pro/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff0a0e21),
        appBarTheme: AppBarTheme(
          color: const Color.fromARGB(255, 52, 47, 88),
          elevation: 15,
          centerTitle: true,
        ),
      ),
      home: InputPage(),
    );
  }
}

