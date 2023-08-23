import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tst/color.dart';
import 'package:tst/model.dart';
import 'package:tst/videoott.dart';
import 'package:video_player/video_player.dart';

class Sampleplayer extends StatefulWidget {
  const Sampleplayer({Key? key}) : super(key: key);

  @override
  State<Sampleplayer> createState() => _SampleplayerState();
}

class _SampleplayerState extends State<Sampleplayer> {

  late FlickManager flickManager;

  void initState() {
    super.initState();
    flickManager = FlickManager(
    onVideoEnd: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Video()),
      );
    },
      videoPlayerController:
      VideoPlayerController.networkUrl(
        Uri.parse(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
      ),
    );
  }
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: red,
        body: Column(
          children: [
            Container(
              height: 250,
              child: FlickVideoPlayer(
                flickManager: flickManager,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text("John Wick Chapter 2",style: supergg,)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text("Description:",style: ggbold,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,bottom: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Renowned assassin John Wick sets out for Rome to duel with some of the deadliest killers\n"
                    "and to fulfil a vow he made. However, he soon learns that there is a huge bounty on his head.",
                      style: ggnor,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,bottom: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Release date: 17 February 2017 (India)\n"
                    "Director: Chad Stahelski\n"
                    "Budget: 4 crores USD",style: ggnor,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 20,
                child: Text("Contine Watching",
                  style:GoogleFonts.lato(color: whi,fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: lis.length,
                    itemBuilder: (BuildContext con,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 120,
                          child: GestureDetector(
                            child: Container(
                              height: 100,
                              width: 130,
                              decoration: BoxDecoration
                                (
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage(lis[index].image),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Video()),
                              );
                            },
                          ),
                        ),
                      );
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
