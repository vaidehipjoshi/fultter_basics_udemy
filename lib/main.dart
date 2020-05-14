import 'package:flutter/material.dart';
import 'package:fultter_basics_udemy/answers.dart';
import 'package:fultter_basics_udemy/questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
var questions = [
      {
        'questionTxt': 'what\'s your favourite color ?',
        'answerTxt': ["Red","Blue","White","Orange"],
      },
      {
        'questionTxt': 'what\'s your favourite animal ?',
        'answerTxt': ["Tiger","Lion","Snake","Elephant"],
      },
      {
        'questionTxt': 'what\'s your favourite bird ?',
        'answerTxt': ["Peacock","Crow","Pigeon","Parrot"],
      }
    ];


    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firsl udemy app'),
        ),
        body: Column(
          children: [
            Questions(questions[questionIndex]['questionTxt']),
          ...(questions[questionIndex]['answerTxt'] as List<String>)
          .map((answer)
            {
              print("Text...................."+answer);
              return Answers(answerQuestion,answer);
            }).toList(),
            ],
        ),
      ),
    );
  }
}
