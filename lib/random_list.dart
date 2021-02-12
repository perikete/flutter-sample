import 'package:flutter/material.dart';

class RandomsList extends StatelessWidget {
  final List<String> randomsList;

  RandomsList({Key key, @required this.randomsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Favourited random words: ${randomsList.join(",")}");
  }
}
