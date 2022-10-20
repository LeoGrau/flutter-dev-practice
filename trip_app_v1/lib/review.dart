import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage =
      "https://images.pexels.com/photos/2108845/pexels-photo-2108845.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  String name = "Varuna Yasas";
  String info = "1 review 5 photos";
  String comment = "There is an amazing place in Sri-Lanka";

  Review(this.pathImage, this.username, this.details, this.comment,
      {super.key});

  @override
  Widget build(BuildContext context) {

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        info,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 13.0, fontFamily: "Lato", color: Color(0xFFA3A5A7)),
      ),
    );

    final username = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 13.0, fontFamily: "Lato", fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        username,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(pathImage))),
    );
    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}
