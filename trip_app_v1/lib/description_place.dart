import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace({super.key});

  @override
  Widget build(BuildContext context) {

    var descriptionDummy = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?";

    final star = Container(
      margin: const EdgeInsets.only(top: 300.0, right: 3),
      child: const Icon(Icons.star, color: Colors.amber),
    );
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
              top: 320.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: const Text(
            "Duwili Ella",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star, star],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Text(descriptionDummy, textAlign: TextAlign.left,),
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
