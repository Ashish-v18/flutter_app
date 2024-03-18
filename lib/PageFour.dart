import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  bool _showPlayer = false;
  bool _showPlayer2 = false;
  bool _showPlayer3 = false;

  @override
  Widget build(BuildContext context) {
    const videoURL =
        'https://youtu.be/iEWXCzb6IOM?si=ENR1GvHpv3QxJEXn'; // Replace with your video URL
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    const videoURL2 =
        'https://youtu.be/elh7Bsi2kik?si=c11AYTgTSapDnpE6'; // Replace with your video URL
    final videoID2 = YoutubePlayer.convertUrlToId(videoURL2);
    const videoURL3 =
        'https://youtu.be/N3xfxczVxTo?si=-R9UiLDniB7EAXw9'; // Replace with your video URL
    final videoID3 = YoutubePlayer.convertUrlToId(videoURL3);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 132, 239, 243),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 16, 15, 92),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Swaranjali Kala Sadhak\n',
                        style: TextStyle(
                          color: Color.fromARGB(255, 223, 239, 45),
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      TextSpan(
                        text: 'Gwalior-Gurugram',
                        style: TextStyle(
                          color: Color.fromARGB(255, 223, 239, 45),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Quick Access',
                      style: TextStyle(
                        color: Color.fromARGB(255, 8, 8, 8),
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 43.h),
            Center(
              child: _showPlayer
                  ? YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId: videoID!,
                        flags: const YoutubePlayerFlags(
                          autoPlay: false,
                          mute: false,
                        ),
                      ),
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blueAccent,
                      progressColors: const ProgressBarColors(
                        playedColor: Colors.blue,
                        handleColor: Colors.blueAccent,
                      ),
                      onReady: () {
                        // Do something when player is ready.
                      },
                    )
                  : ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _showPlayer = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Color.fromARGB(255, 242, 243, 240),
                        elevation: 3,
                        side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 430.w, minHeight: 59.h),
                          alignment: Alignment.center,
                          child: const Text(
                            'Ram Stuti',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color.fromARGB(255, 6, 6, 6),
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
            SizedBox(height: 9.h),
            Center(
              child: _showPlayer2
                  ? YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId: videoID2!,
                        flags: const YoutubePlayerFlags(
                          autoPlay: false,
                          mute: false,
                        ),
                      ),
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blueAccent,
                      progressColors: const ProgressBarColors(
                        playedColor: Colors.blue,
                        handleColor: Colors.blueAccent,
                      ),
                      onReady: () {
                        // Do something when player is ready.
                      },
                    )
                  : ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _showPlayer = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Color.fromARGB(255, 242, 243, 240),
                        elevation: 3,
                        side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 430.w, minHeight: 59.h),
                          alignment: Alignment.center,
                          child: const Text(
                            'Shiv Stuti',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color.fromARGB(255, 6, 6, 6),
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
            SizedBox(height: 9.h),
            Center(
              child: _showPlayer3
                  ? YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId: videoID3!,
                        flags: const YoutubePlayerFlags(
                          autoPlay: false,
                          mute: false,
                        ),
                      ),
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.blueAccent,
                      progressColors: const ProgressBarColors(
                        playedColor: Colors.blue,
                        handleColor: Colors.blueAccent,
                      ),
                      onReady: () {
                        // Do something when player is ready.
                      },
                    )
                  : ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _showPlayer = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Color.fromARGB(255, 242, 243, 240),
                        elevation: 3,
                        side: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 430.w, minHeight: 59.h),
                          alignment: Alignment.center,
                          child: const Text(
                            'Holi',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color.fromARGB(255, 6, 6, 6),
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
