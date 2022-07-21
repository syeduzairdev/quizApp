import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/newvideo.dart';
import 'package:flutter_quiz_app/videoplayer.dart';

class Result extends StatefulWidget {
  final int resultScore;
  final VoidCallback  resetQuizHandler;
  Result(this.resultScore, this.resetQuizHandler);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var user;
  String get resultPhrase {
    var resultText = "You Did it.";
    if (widget.resultScore >= 80) {
      resultText = "congrats You are pass";

    } else if (widget.resultScore  < 80) {
      resultText = "you are fail";

    }
    return resultText;
  }

  creteroute(BuildContext context,route){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>route ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            widget.resultScore.toString(),
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          MaterialButton(
            child:  widget.resultScore  <80? Text("Try again"):null,
            textColor: Colors.red,
            onPressed:   (    ){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>ChewieDemo2()),
          );
          },
          )
        ],
      ),
    );
  }
}
