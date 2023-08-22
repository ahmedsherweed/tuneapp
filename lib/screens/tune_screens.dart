import 'package:flutter/material.dart';
import 'package:tunesapp/models/tune_model.dart';
import 'package:tunesapp/widgets/Tune_items.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color.fromARGB(255, 7, 64, 110), sound: 'note1.wav'),
    TuneModel(color: Color.fromARGB(225, 210, 14, 14), sound: 'note2.wav'),
    TuneModel(color: Color.fromARGB(136, 232, 192, 192), sound: 'note3.wav'),
    TuneModel(color: Colors.yellow, sound: 'note4.wav'),
    TuneModel(color: Colors.white10, sound: 'note5.wav'),
    TuneModel(color: Colors.blueAccent, sound: 'note6.wav'),
    TuneModel(color: Colors.green, sound: 'note7.wav'),
    TuneModel(color: Colors.blue, sound: 'note8.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tune App"),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 38, 37, 34),
      ),
      body: Column(
          children: tunes
              .map((Color) => TuneItem(
                    tune: Color,
                  ))
              .toList()),
    );
  }
}
