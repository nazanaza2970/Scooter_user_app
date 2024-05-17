import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SafetyVideo extends StatefulWidget {
  const SafetyVideo({super.key});
  static String myVideoId = 'nkLPO5O8bbU';

  @override
  State<SafetyVideo> createState() => _SafetyVideoState();
}

class _SafetyVideoState extends State<SafetyVideo> {
  late YoutubePlayerController _controller;

  // final YoutubePlayerController _controller = YoutubePlayerController(
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId:SafetyVideo.myVideoId,
      flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: true,
          loop: false,
          enableCaption: false),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children:<Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'ScooterLab',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: YoutubePlayer(
                controller: _controller,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                child: const Text("Next"),
                onPressed: (){
                  Navigator.pushNamed(context, '/safetyInstruction');
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}