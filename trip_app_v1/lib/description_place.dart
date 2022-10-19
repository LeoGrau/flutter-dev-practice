import 'package:flutter/material.dart';


class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String description;

  DescriptionPlace(this.namePlace, this.stars, this.description, {super.key}); //Or you can do it the traditional way

  @override
  Widget build(BuildContext context) {


    final halfStar = Container(
      margin: const EdgeInsets.only(top: 300.0, right: 3),
      child: const Icon(Icons.star_half, color: Colors.amber),
    );

    final star = Container(
      margin: const EdgeInsets.only(top: 300.0, right: 3),
      child: const Icon(Icons.star, color: Colors.amber),
    );

    final borderStar = Container(
      margin: const EdgeInsets.only(top: 300.0, right: 3),
      child: const Icon(Icons.star_border, color: Colors.amber),
    );


    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
              top: 320.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star, halfStar],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Text(this.description, textAlign: TextAlign.left, style: const TextStyle(fontFamily: "Lato")),
    );
    final allDescription = Column(
      children: <Widget>[
        titleStars,
        description
      ],
    );
    return allDescription;
  }
}
