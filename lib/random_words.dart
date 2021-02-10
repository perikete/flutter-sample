import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  WordPair _random;

  @override
  void initState() {
    _random = WordPair.random();
    super.initState();
  }

  void _handleNewRandom() {
    setState(() {
      _random = WordPair.random();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Random word:',
          ),
          Text(_random.asPascalCase),
          ElevatedButton(onPressed: _handleNewRandom, child: Text("New Random"))
        ]);
  }
}
