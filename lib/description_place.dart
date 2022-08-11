import 'package:flutter/material.dart'
    show
        BuildContext,
        Color,
        Column,
        Container,
        EdgeInsets,
        FontWeight,
        Icon,
        Icons,
        Row,
        StatelessWidget,
        Text,
        TextAlign,
        TextStyle,
        Widget;
import 'package:flutter/src/foundation/key.dart';

class DescripcionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescripcionPlace(this.namePlace, this.stars, this.descriptionPlace,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(
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

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            starBorder,
            star,
            star,
            starHalf,
            starBorder,
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
            fontFamily: "Lato", fontSize: 16.0, color: Color(0xFF6D6E71)),
        textAlign: TextAlign.justify,
      ),
    );

    return Column(
      children: [
        titleStars,
        description,
      ],
    );
  }
}
