import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Game',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Word Game"),
          ),
          body: Center(child: RandomSentences())),
    );
  }
}

class RandomSentences extends StatefulWidget {
  @override
  _RandomSentencesState createState() => _RandomSentencesState();
}

class _RandomSentencesState extends State<RandomSentences> {
  final noun = WordNoun.random();
  final adjective = WordAdjective.random();

  @override
  Widget build(BuildContext context) {
    return Text('The programmer wrote a ${adjective.asCapitalized}'
        'app in Flutter and showed it '
        'off to his ${noun.asCapitalized}');
  }
}
