import 'package:flutter/material.dart';


class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: Padding(padding: EdgeInsets.all(20)),


  

    );
  }
}































// import 'package:flutter/material.dart';
// import 'package:tasksheet_23/My_Projekt/dR_Music_Page.dart';


// class AudioPlayerApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Audio Player Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: AudioPlayerPage(),
//     );
//   }
  
//   play(String audioUrl) {}
// }

// class AudioPlayerPage extends StatefulWidget {
//   @override
//   _AudioPlayerState createState() => _AudioPlayerState();
// }

// class _AudioPlayerState extends State<AudioPlayerPage> {
//   AudioPlayerApp audioPlayer = AudioPlayerApp();
//   String audioUrl =
//       'https://www.youtube.com/watch?v=JwBjhBL9G6U';
//       //"https://example.com/audio.mp3"; // Hier die Audio-URL einfügen
//  late String localFilePath; // Pfad zur lokalen Datei im Gerät

//   @override
//   void initState() {
//     super.initState();
//     // Lokale Audio-Datei im Gerät speichern (z.B. unter `assets/audio.mp3`)
//     localFilePath = "assets/audio.mp3";
//     audioPlayer.onPlayerCompletion.listen((event) {
//       // Audiowiedergabe abgeschlossen
//       setState(() {
//         // Hier kannst du UI-Änderungen bei Abschluss der Wiedergabe durchführen
//       });
//     });
//   }

//   // Funktion zum Starten der Audiowiedergabe von der URL
//   Future<void> playFromUrl() async {
//     int result = await audioPlayer.play(audioUrl);
//     if (result == 1) {
//       // Erfolgreich gestartet
//     }
//   }

//   // Funktion zum Starten der Audiowiedergabe von der lokalen Datei
//   Future<void> playFromFile() async {
//     int result = await audioPlayer.play(localFilePath, isLocal: true);
//     if (result == 1) {
//       // Erfolgreich gestartet
//     }
//   }

//   // Funktion zum Pausieren der Audiowiedergabe
//   Future<void> pause() async {
//     int result = await audioPlayer.pause();
//     if (result == 1) {
//       // Erfolgreich pausiert
//     }
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose(); // AudioPlayer freigeben, um Speicherleck zu verhindern
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Audio Player Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             RaisedButton(
//               onPressed: playFromUrl,
//               child: Text('Play from URL'),
//             ),
//             RaisedButton(
//               onPressed: playFromFile,
//               child: Text('Play from File'),
//             ),
//             RaisedButton(
//               onPressed: pause,
//               child: Text('Pause'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



/// audio_player_page.dart ZWEITE IDEEN FÜR EINEN PLAYER
///
///
///// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class AudioPlayerPage extends StatefulWidget {
//   final String audioUrl;
//   final String title;
//   final String imageUrl;

//   AudioPlayerPage({
//     Key key,
//     @required this.audioUrl,
//     @required this.title,
//     @required this.imageUrl,
//   }) : super(key: key);

//   @override
//   _AudioPlayerPageState createState() => _AudioPlayerPageState();
// }

// class _AudioPlayerPageState extends State<AudioPlayerPage> {
//   AudioPlayer audioPlayer = AudioPlayer();
//   AudioPlayerState audioPlayerState = AudioPlayerState.STOPPED;
//   Duration duration = Duration();
//   Duration position = Duration();

//   @override
//   void initState() {
//     super.initState();
//     _initAudioPlayer();
//   }

//   void _initAudioPlayer() {
//     audioPlayer.onPlayerStateChanged.listen((event) {
//       setState(() {
//         audioPlayerState = event;
//       });
//     });

//     audioPlayer.onDurationChanged.listen((event) {
//       setState(() {
//         duration = event;
//       });
//     });

//     audioPlayer.onAudioPositionChanged.listen((event) {
//       setState(() {
//         position = event;
//       });
//     });
//   }

//   Future<void> _playAudio() async {
//     int result = await audioPlayer.play(widget.audioUrl);
//     if (result == 1) {
//       // Erfolgreich gestartet
//     }
//   }

//   Future<void> _pauseAudio() async {
//     int result = await audioPlayer.pause();
//     if (result == 1) {
//       // Erfolgreich pausiert
//     }
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   String _formatDuration(Duration duration) {
//     return "${duration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${(duration.inSeconds.remainder(60)).toString().padLeft(2, '0')}";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Audio Player'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(16.0),
//               child: Image.network(widget.imageUrl),
//             ),
//             Text(
//               widget.title,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             Slider(
//               value: position.inMilliseconds.toDouble(),
//               min: 0.0,
//               max: duration.inMilliseconds.toDouble(),
//               onChanged: (value) {
//                 audioPlayer.seek(Duration(milliseconds: value.toInt()));
//               },
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.play_arrow),
//                   iconSize: 48,
//                   onPressed: () {
//                     _playAudio();
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.pause),
//                   iconSize: 48,
//                   onPressed: () {
//                     _pauseAudio();
//                   },
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     _formatDuration(position),
//                     style: TextStyle(fontSize: 12),
//                   ),
//                   Text(
//                     _formatDuration(duration),
//                     style: TextStyle(fontSize: 12),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
