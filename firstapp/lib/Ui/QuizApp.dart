import 'dart:ui';

import 'package:firstapp/Model/Questions.dart';
import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List arrQuestions = [
    Questions.name(
        "Whaling / Whaling attack is a kind of phishing attacks that target senior executives and other high profile to access valuable information.",
        true),
    Questions.name(
        "Freeware is software that is available for use at no monetary cost.",
        true),
    Questions.name(
        "The hexadecimal number system contains digits from 1 - 15.", false),
    Questions.name(
        "IPv6 Internet Protocol address is represented as eight groups of four Octal digits.",
        false),
    Questions.name("Octal number system contains digits from 0 - 7.", true),
  ];

  int _currentIndex = 0;

  _nextQuestion() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % arrQuestions.length;
    });
  }

  _checkAnswer(bool userAnswer) {
    if (userAnswer == arrQuestions[_currentIndex].isCorrect) {
      debugPrint("Correct");
      setState(() {
        _currentIndex = (_currentIndex + 1) % arrQuestions.length;
      });
    } else {
      debugPrint("Incorrect");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("QUIZ APP"),
      ),
      backgroundColor: Colors.deepPurple.shade100,
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset(
                "images/quiz.png",
                width: 150,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.deepPurple.shade200,
                          style: BorderStyle.solid)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      arrQuestions[_currentIndex].question,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _checkAnswer(true);
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        "TRUE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _checkAnswer(false);
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        "FALSE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _nextQuestion();
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
