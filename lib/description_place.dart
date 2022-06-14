import 'package:flutter/material.dart';

class DescripcionPlace extends StatelessWidget{

  String namePlace;
  int stars;
  String descriptionPlace;

  DescripcionPlace(this.namePlace, this.stars, this.descriptionPlace);


@override
Widget build(BuildContext context) {

  final star_half = Container(margin: const EdgeInsets.only(
    top: 323.0,
    right: 3.0,
  ),
    child: const Icon(
      Icons.star_half,
      color: Color(0xFFF2C611),
    ),
  );

  final star_border = Container(margin: const EdgeInsets.only(
    top: 323.0,
    right: 3.0,
  ),
    child: const Icon(
      Icons.star_border,
      color: Color(0xFFF2C611),
    ),
  );

  final star = Container(
    margin: const EdgeInsets.only(
      top: 323.0,
      right: 3.0,
    ),
    child: const Icon(
      Icons.star,
      color: Color(0xFFF2C611),
    ),
  );

  final title_stars = Row(
    children: [
      Container(
        margin: const EdgeInsets.only(
          top: 320.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Text(
          namePlace,
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      Row(
        children: [
          star,
          star,
          star,
          star_half,
          star_border,
        ],
      ),
    ],
  );

  final description = Container(
    margin: const EdgeInsets.only(
      top: 20.0,
      left: 20.0,
      right: 20.0,
    ),
    child: Text(
      descriptionPlace,
      style: const TextStyle(
          fontSize: 16.0,
          color: Color(0xFF6D6E71)
      ),
      textAlign: TextAlign.justify,
    ),
  );

  return Column(
    children: [
      title_stars,
      description,
    ],
  );
}
}