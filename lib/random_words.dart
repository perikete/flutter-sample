import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'favourite_random.dart';
import 'random_list.dart';

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  WordPair _random;
  final List<String> _favourites = ["test"];

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

  void _handleOnFavouriteRandom() {
    setState(() {
      _favourites.add(_random.asPascalCase);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Random word:',
            ),
            Text(_random.asPascalCase),
            FavouriteRandom(
              onPressed: _handleOnFavouriteRandom,
            )
          ]),
          ElevatedButton(
              onPressed: _handleNewRandom, child: Text("New Random")),
          RandomsList(
            randomsList: _favourites,
          )
        ]);
  }
}
