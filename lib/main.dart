import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
    runApp(PianoApp());
  }

class PianoApp extends StatefulWidget {
  @override
  _PianoAppState createState() => _PianoAppState();
}

class _PianoAppState extends State<PianoApp> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future<void> _playSound(String asset) async {
    await player.setAsset(asset);
    await player.play();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Row(
          children: [
            SizedBox(width: 25),
            Container(
              color: Colors.white,
              width: 30,
              height: 200,
              child: GestureDetector(
                onTap: () => _playSound('sounds/do.m4a'),

              ),
            ),
            SizedBox(width: 25),
            Container(
              color: Colors.white,
              width: 30,
              height: 200,
              child: GestureDetector(
                onTap: () => _playSound('sounds/re.m4a'),
              ),
            ),
            SizedBox(width: 25),
            Container(
              color: Colors.white,
              width: 30,
              height: 200,
              child: GestureDetector(
                onTap: () => _playSound('sounds/mi.m4a'),
              ),
            ),
            SizedBox(width: 25),
            Container(
              color: Colors.white,
              width: 30,
              height: 200,
              child: GestureDetector(
                onTap: () => _playSound('sounds/fa.m4a'),
              ),
            ),
            SizedBox(width: 25),
            Container(
              color: Colors.white,
              width: 30,
              height: 200,
              child: GestureDetector(
                onTap: () => _playSound('sounds/sol.m4a'),
              ),
            ),
            SizedBox(width: 25),
            Container(
              color: Colors.white,
              width: 30,
              height: 200,
              child: GestureDetector(
                onTap: () => _playSound('sounds/la.m4a'),
              ),
            ),
            SizedBox(width: 25),
            Container(
              color: Colors.white,
              width: 30,
              height: 200,
              child: GestureDetector(
                onTap: () => _playSound('sounds/si.m4a'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
