import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 300.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("/img/foto.jpg"),
          CardImage("/img/foto.jpg"),
          CardImage("/img/foto.jpg"),
          CardImage("/img/foto.jpg"),
          CardImage("/img/foto.jpg"),
          CardImage("/img/foto.jpg"),
        ],
      ),
    );
  }
}
