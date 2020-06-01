import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  // Technically, this is better
  @override
  Widget build(BuildContext context) {
    var questions = <String>[
      'What\'s your favorite color',
      'What\'s your favorite pet'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: () {
                  if (_questionIndex < questions.length-1) {
                    _answerQuestion();
                  }
                }),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen.');
              },
            ),
          ],
        ),
      ),
    );
  }
}
