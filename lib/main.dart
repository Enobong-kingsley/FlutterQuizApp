import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    //you can create a map by using curely braces or using the map keyword
    //a map is a collection of key value texts(the key can either be a string or an int)
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 2},
        {'text': 'Red', 'score': 4},
        {'text': 'Blue', 'score': 6},
        {'text': 'Green', 'score': 8},
      ],
    },
    {
      'questionText': 'what\'s your favorite book?',
      'answers': [
        {'text': 'The Millioniar Secret', 'score': 5},
        {'text': 'Petter Rabbit', 'score': 10},
        {'text': 'Laws of Leadership', 'score': 15},
        {'text': 'Seven shades of Grey', 'score': 20},
      ],
    },
    {
      'questionText': 'who is your favorite person?',
      'answers': [
        {'text': 'Percy', 'score': 3},
        {'text': 'Stephanie', 'score': 6},
        {'text': 'Blessing', 'score': 9},
        {'text': 'Andrew', 'score': 12},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

void _resetQuiz(){
  setState(() {
     _questionIndex = 0;
  _totalScore = 0;
  });
}

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex +1;
    });
    // questionIndex = questionIndex++ issues incrementing
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('we have more questions');
    } else {
      print('No more questions to display!');
    }
  }

  @override
  Widget build(BuildContext context) {
    var dummy = ['Hello'];
    dummy.add('Max');
    print(dummy);
    // questions = []; doesn't work if question is a const
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
