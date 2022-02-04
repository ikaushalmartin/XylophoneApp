import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Xylophone',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
        ),
        body: myapp(),
      ),
    ),
  );
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);
  void playsound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded expfunction({required Color color, required int m}) {
    return Expanded(
      child: FlatButton(
        color: color,
        height: 75,
        padding: EdgeInsets.only(bottom: 20),
        onPressed: () {
          playsound(m);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        expfunction(color: Colors.red, m: 1),
        expfunction(color: Colors.blue, m: 2),
        expfunction(color: Colors.green, m: 3),
        expfunction(color: Colors.yellow, m: 4),
        expfunction(color: Colors.pink, m: 5),
        expfunction(color: Colors.teal, m: 6),
        expfunction(color: Colors.cyan, m: 7),
      ],
    );
  }
}
