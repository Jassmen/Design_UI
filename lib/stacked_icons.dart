import 'package:flutter/material.dart';

class StackIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(

      alignment: Alignment.center,
      /**** Stack used to placing the containers on etch other (overlap) ****/
      children: <Widget>[
        /**** make a container and give it width and height ****/
        /****  give it a radius and put icon on it  ****/
        /**** each container on ths stack will contain an icon ****/
        new Container(
          margin: new EdgeInsets.all(30.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFF18D191)),
          child: new Icon(
            Icons.local_offer,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: new EdgeInsets.only(right: 50.0, top: 50.0),
          /** COZ of we ae using stack all containers will be overlap on each other so we will using margin In order to keep them apart **/
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFFFC6A7F)),
          child: new Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: new EdgeInsets.only(left: 30.0, top: 50.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFFFFCE56)),
          child: new Icon(
            Icons.local_car_wash,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: new EdgeInsets.only(left: 100.0, top: 49.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFF45E0EC)),
          child: new Icon(
            Icons.place,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
