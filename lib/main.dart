import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void teclaSound(int nota) {
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }

  Expanded creaTecla({required Color color, required int nota}) {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          teclaSound(nota);
        },
        color: color, child: Text("."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              creaTecla(color: Colors.blue, nota: 1),
              creaTecla(color: Colors.red, nota: 2),
              creaTecla(color: Colors.green, nota: 3),
              creaTecla(color: Colors.black, nota: 4),
              creaTecla(color: Colors.yellow, nota: 5),
              creaTecla(color: Colors.purple, nota: 6),
              creaTecla(color: Colors.pink, nota: 7),
              creaTecla(color: Colors.lime, nota: 8),
              creaTecla(color: Colors.amber, nota: 9),
              creaTecla(color: Colors.blueGrey, nota: 10),
            ],),
        ),
      ),
    );
  }

}