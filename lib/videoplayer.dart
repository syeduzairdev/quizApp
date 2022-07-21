 import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';


 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class ChewieDemo extends StatefulWidget {
  final score;
  // ignore: use_key_in_widget_constructors
  const ChewieDemo({this.title = 'Chewie Demo', this.score});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {




    // controller!.play();




  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: ListView(
          children: [
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: '47hXcENCN7E', //Add videoID.
                flags: YoutubePlayerFlags(
                  hideControls: false,
                  controlsVisibleAtStart: true,
                  autoPlay: false,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.white,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: MaterialButton(
                color: Colors.red,
                onPressed:  (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   myappstate ()),
                  );
                },
                textColor: Colors.white,
                child: Text(
                  "Start Quiz",
                ),
              ),
            ),
          ],
        ),

      )
    ;
  }
}