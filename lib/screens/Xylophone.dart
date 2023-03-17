import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                
                await player.play(AssetSource("audio/moo.mp3"));
              },
              child: Text('Cow'),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () async {
                await player.play(AssetSource("audio/horse.mp3"));
              },
              child: Text('horse'),
            ),
            ElevatedButton(
              onPressed: () async {

                await player.play(AssetSource("audio/voice.mp3"));
              },
              child: Text('note'),
            ),
            ElevatedButton(
              onPressed: () async {

                await player.pause();
              },
              child: Text('STOP THIS'),
            ),
            ElevatedButton(
              onPressed: () async {

                await player.resume();
              },
              child: Text('RESUMe'),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'dart:async';
//
// import 'package:just_audio/just_audio.dart';
// class Xylophone extends StatefulWidget {
//    Xylophone({Key? key}) : super(key: key);
//
//   final player = AudioPlayer();
//   @override
//   State<Xylophone> createState() => _XylophoneState();
// }
//
// class _XylophoneState extends State<Xylophone> {
//   AudioPlayer? _player;
//
//   // void playNote(int index){
//   //   player.play(AssetSource('note$index.wav'));
//   // }
//   // @override
//   // void dispose() {
//   //   _player?.dispose();
//   //   super.dispose();
//   // }
//   //
//   //
//   // void _play(int index){
//   //   _player?.dispose();
//   //   final player = _player = AudioPlayer();
//   //   player.play();
//   // }
//
//
//   Expanded buildKey(Color color,int index){
//     return Expanded(
//       child: TextButton(
//         // onPressed: (){
//         //   _play(index);
//         // },
//         onPressed: () async{
//
//         },
//         child: Container(
//           color: color,
//           child: Text("click me"),
//         ),
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Column(
//             children: [
//               buildKey(Colors.red,1),
//               buildKey(Colors.green,2),
//               // buildKey(Colors.blue,3),
//               // buildKey(Colors.yellow,4),
//               // buildKey(Colors.green,5),
//               // buildKey(Colors.purple,6),
//               // buildKey(Colors.tealAccent,7),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
