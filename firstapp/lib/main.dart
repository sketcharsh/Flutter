import 'package:firstapp/Ui/CalculatorApp.dart';
import 'package:firstapp/Ui/QuizApp.dart';
import 'package:flutter/material.dart';
import 'Ui/home.dart';

//void main() => runApp(Home());
void main() => runApp(new MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    ));
