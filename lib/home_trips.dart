import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'reviews_list.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  HomeTrips({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescripcionPlace("Daniel Coll", 4, descriptionDummy),
            const ReviewList()
          ],
        ),
        const HeaderAppBar()
      ],
    );
  }
}
