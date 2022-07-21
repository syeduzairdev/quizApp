import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question.dart';
import 'package:flutter_quiz_app/selext_corse.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp()); // runApp provided by flutter to initiate, takes widght tree
  //and shows it on screen
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(theme: ThemeData.dark(), home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  var questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Column(
        children: [
          Text(
            "Select Your Course? ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => selectcourse()),
                );
              },
              textColor: Colors.white,
              child: Text(
                "Algorithm Analysis",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => selectcourse()),
                );
              },
              textColor: Colors.white,
              child: Text(
                "Special Topics in CS ",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class myappstate extends StatefulWidget {
  myappstate({Key? key}) : super(key: key);

  @override
  State<myappstate> createState() => _myappstateState();
}

class _myappstateState extends State<myappstate> {
  var questionIndex = 0;
  var _totalScore = 0;
  final questions = const [
    {
      "questionText":
          "Which algorithm is batter with respect to time complexity?",
      'answers': [
        {'text': 'Linear search', 'score': 0},
         {'text': 'Binary Search ', 'score': 10},
      ],
    },
    {
      "questionText":
          "Linear search time complexity in worst case is?",
      'answers': [
        {'text': 'O(N)', 'score': 10},
        {'text': 'O(Log N)', 'score': 0},

      ]
    },
    {
      "questionText":
          "Binary search time complexity in worst case is?",
      'answers': [
        {'text': ' O(N Log N)', 'score': 0},

        {'text': ' O(Log N)', 'score': 10},
      ]
    },
    //new
    {
      "questionText":
          "Heap Sort time complexity in worst case is?",
      'answers': [
        {'text': 'O(N)', 'score': 0},

        {'text': 'O(N Log N)', 'score': 10},
      ],
    },
    {
      "questionText":
          "Insertion Sort time complexity in worst case is?",
      'answers': [
        {'text': 'O(N^2)', 'score': 10},

        {'text': 'O(N Log N)', 'score': 0},
      ]
    },
    {
      "questionText":
          "Bubble Sort is fast than Heap Sort in worst case is?",
      'answers': [

        {'text': 'True', 'score': 0},
        {'text': 'False ', 'score': 10},
      ]
    },
    //new
    {
      "questionText":
          "Quick Sort is fast than Heap Sort in worst case is?",
      'answers': [

        {'text': 'True', 'score': 0},
        {'text': ' False  ', 'score': 10},
      ],
    },
    {
      "questionText":
          "Heap Sort is fast than Bubble Sort in worst case is? ",
      'answers': [
        {'text': 'True', 'score': 10},
        {'text': 'False ', 'score': 0},

      ]
    },
    {
      "questionText":
          "Time complexity of Heap Sort and Quick Sort is same in all cases?",
      'answers': [

        {'text': 'True', 'score': 0},
        {'text': 'False   ', 'score': 10},
      ]
    },
    {
      "questionText":
          "Time complexity of Heap Sort and Merge Sort is same in all cases?",
      'answers': [
        {'text': 'False', 'score': 0},

        {'text': 'True', 'score': 10},
      ]
    },

  ];
  final questions1 = const [
    {
      "questionText":
      "Insertion sort time complexity in worst case is?",
      'answers': [
        {'text': 'O(N Log N)', 'score': 0},
        {'text': 'O(N^2)  ', 'score': 10},
      ],
    },
    {
      "questionText":
      "Selection sort time complexity in worst case is?",
      'answers': [
        {'text': ' O(N^2) ', 'score': 10},
        {'text': 'O(Log N)', 'score': 0},

      ]
    },
    {
      "questionText":
      "Binary search time complexity in worst case is?",
      'answers': [
        {'text': ' O(N Log N)', 'score': 0},

        {'text': ' O(Log N)', 'score': 10},
      ]
    },
    //new
    {
      "questionText":
      "Bubble sort time complexity in worst case is?",
      'answers': [
        {'text': ' O(N Log N)', 'score': 0},

        {'text': ' O(N^2)', 'score': 10},
      ],
    },
    {
      "questionText":
      "Quick sort time complexity in worst case is?",
      'answers': [
        {'text': ' O(N^2)', 'score': 10},

        {'text': ' O(N Log N)', 'score': 0},
      ]
    },
    {
      "questionText":
      "Heap sort time complexity in worst case is?",
      'answers': [

        {'text': ' O(N^2)', 'score': 0},
        {'text': 'O(N Log N)', 'score': 10},
      ]
    },
    //new
    {
      "questionText":
      "Quick sort time complexity in Best case is?",
      'answers': [

        {'text': 'O(1)', 'score': 0},
        {'text': ' O(N Log N)  ', 'score': 10},
      ],
    },
    {
      "questionText":
      "Merge sort time complexity in Best case is?",
      'answers': [
        {'text': 'O(N Log N) ', 'score': 10},
        {'text': 'O(N) ', 'score': 0},

      ]
    },
    {
      "questionText":
      "Quick sort time complexity in worst case is?",
      'answers': [

        {'text': 'O(N Log N)', 'score': 0},
        {'text': 'O(N^2)   ', 'score': 10},
      ]
    },
    {
      "questionText":
      "Binary search time complexity in worst case is?",
      'answers': [
        {'text': ' O(N Log N) ', 'score': 0},

        {'text': 'O( log N)', 'score': 10},
      ]
    },

  ];
  void answerQuestion(int score) {
    if (questionIndex < questions.length) {}
    _totalScore = _totalScore + score;
    print(_totalScore);
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: questionIndex <
           questions.length
          ? Quiz(answerQuestion, questions, questionIndex)
          : Result(_totalScore , resetQuiz),
    );
  }
}

// class _MyAppState extends State<MyApp> {
//   //_ means private in dart
//   var questionIndex = 0;
//   var _totalScore = 0;
//   final questions = const [
//     {
//       "questionText": "How many passes does an insertion sort algorithm consist of?",
//       'answers': [
//         {'text': 'N', 'score': 0},
//         {'text': 'N+1', 'score': 0},
//         {'text': 'N-1', 'score': 10},
//       ],
//     },
//     {
//       "questionText": "Which of the following algorithm implementations is similar to that of an insertion sort?",
//       'answers': [
//         {'text': 'Binary heap', 'score': 10},
//         {'text': 'Quick sort', 'score': 0},
//         {'text': 'Merge sort', 'score': 0},
//       ]
//     },
//     {
//       "questionText": "What is the average case running time of an insertion sort algorithm?",
//       'answers': [

//         {'text': 'O(N)', 'score': 0},
//         {'text': 'O(N log N)', 'score': 0},
//         {'text': ' O(N2)', 'score': 10},
//       ]
//     },
//     //new
//      {
//       "questionText": "Any algorithm that sorts by exchanging adjacent elements require O(N2) on average.",
//       'answers': [
//         {'text': 'False', 'score': 0},
//         {'text': 'None of these', 'score': 0},
//         {'text': 'True', 'score': 10},
//       ],
//     },
//     {
//       "questionText": "What is the average number of inversions in an array of N distinct numbers?",
//       'answers': [
//         {'text': 'N(N-1)/4', 'score': 10},
//         {'text': 'N(N+1)/2', 'score': 0},
//         {'text': 'Merge sort', 'score': 0},
//       ]
//     },
//     {
//       "questionText": "What is the running time of an insertion sort algorithm if the input is pre-sorted?",
//       'answers': [

//         {'text': 'O(N)', 'score': 0},
//         {'text': 'O(N log N)', 'score': 0},
//         {'text': 'O(N2)', 'score': 10},
//       ]
//     },
//     //new
//     {
//       "questionText": "What will be the number of passes to sort the elements using insertion sort?14, 12,16, 6, 3, 10",

//       'answers': [
//         {'text': '7', 'score': 0},
//         {'text': '6', 'score': 0},
//         {'text': ' 5', 'score': 10},
//       ],
//     },
//     {
//       "questionText": "For the following question, how will the array elements look like after second pass?34, 8, 64, 51, 32, 21 ",

//       'answers': [
//         {'text': '8, 34, 64, 51, 32, 21', 'score': 10},
//         {'text': '8, 34, 51, 64, 32, 21', 'score': 0},
//         {'text': '8, 32, 34, 51, 64, 21', 'score': 0},
//       ]
//     },
//     {
//       "questionText": "Which of the following real time examples is based on insertion sort?",
//       'answers': [

//         {'text': 'arranging a pack of playing cards', 'score': 0},
//         {'text': 'database scenarios and distributes scenarios', 'score': 0},
//         {'text': 'arranging a pack of playing cards', 'score': 10},
//       ]
//     },
//     {
//       "questionText": " In C, what are the basic loops required to perform an insertion sort?",
//       'answers': [

//         {'text': 'if else', 'score': 0},
//         {'text': ' do- while', 'score': 0},
//         {'text': 'for and while', 'score': 10},
//       ]
//     }

//   ];
//   void answerQuestion(int score) {
//     if (questionIndex < questions.length) {}
//     _totalScore = _totalScore + score;
//     print(_totalScore);
//     setState(() {
//       questionIndex = questionIndex + 1;
//     });
//     print(questionIndex);
//   }

//   void resetQuiz() {
//     setState(() {
//       questionIndex = 0;
//       _totalScore = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     //home is named arg

//     return MaterialApp(
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Quiz App"),
//         ),
//         body: questionIndex < questions.length
//             ? Quiz(answerQuestion, questions, questionIndex)
//             : Result(_totalScore, resetQuiz),
//       ),
//     );
//   }
// }
