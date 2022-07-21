 import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/main.dart';
import 'package:flutter_quiz_app/question.dart';
import 'package:flutter_quiz_app/videoplayer.dart';

class selectcourse extends StatefulWidget {
   const selectcourse({ Key? key }) : super(key: key);
 
   @override
   State<selectcourse> createState() => _selectcourseState();
 }
 
 class _selectcourseState extends State<selectcourse> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
       body: Column(
         children: [
           Text(
          "Algorithm Analysis Module",style: TextStyle(color: Colors.white,fontSize: 20),
        ),
         Text(
          "Select Lecture For Quiz?",style: TextStyle(color: Colors.white,fontSize: 20),
        ),
        Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: MaterialButton(
        color: Colors.red,
        onPressed:  (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   ChewieDemo()),
            );
        },
        textColor: Colors.white,
        child: Text(
          "Lecture 1",
        ),
      ),
    ),
    SizedBox(height: 20,),
     Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: MaterialButton(
        color: Colors.red,
        onPressed:  (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   ChewieDemo()),
            );
        },
        textColor: Colors.white,
        child: Text(
          "Lecture 2",
        ),
      ),
    ),
     Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: MaterialButton(
        color: Colors.red,
        onPressed:  (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   ChewieDemo() ),
            );
        },
        textColor: Colors.white,
        child: Text(
          "Lecture 3",
        ),
      ),
    ),
    SizedBox(height: 20,),
     Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: MaterialButton(
        color: Colors.red,
        onPressed:  (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   ChewieDemo ()),
            );
        },
        textColor: Colors.white,
        child: Text(
          "Lecture 4 ",
        ),
      ),
    ),
         ],
       ),
      );
   }
 }



