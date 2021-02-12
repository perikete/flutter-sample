import 'package:flutter/material.dart';

class FavouriteRandom extends StatelessWidget {
  FavouriteRandom({Key key, @required this.onPressed}) : super(key: key);

  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
                icon: Icon(Icons.plus_one),
                alignment: Alignment.centerRight,
                onPressed: _handleOnPress))
      ],
    );
  }

  void _handleOnPress() {
    this.onPressed();
  }
}
