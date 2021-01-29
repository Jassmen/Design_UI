import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginTo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF12D191), size: 20.0),
      ),
      body: LogFunc(),
    );
  }
}

class LogFunc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 300.0,
      height: 300.0,
      alignment: Alignment.center,
      // decoration: new BoxDecoration(color: Color(0xFFFD7384),borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Expanded(
              child: new TextField(
                  decoration: new InputDecoration(
                    labelText: 'Email',
                    hintStyle:new TextStyle(color: Colors.black,fontSize: 20.0) ,
                    border: OutlineInputBorder(),
                  ),
                  textAlign: TextAlign.start,
                  cursorRadius: Radius.circular(50.0),
                style: new TextStyle(color: Colors.black),
              ),

          ),
        ],
      ),
    );
  }
}
