import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(QuickBee());

class QuickBee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Quick Bee",
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(fontFamily: 'RobotoMono'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*****Body of scaffold is going to be center ******/
      body: Center(
        /************ Column -> Stack -> container -> icon ***********/
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
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
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 80.0,top: 10.0),
                  child: new Text(
                    "Quick Bee",
                    style: new TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    /***** Add GestureDetector to put an action on the text *****/
                    child:new GestureDetector(
                      onTap: (){  /** on tap will take meto another screen **/
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Login()
                        ));

                      },
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          color: Color(0xFF12D191),borderRadius:new  BorderRadius.circular(30.0)
                      ),
                      child: new Text("Signin with Email",
                        style: new TextStyle(color: Colors.white,
                            fontSize: 20.0),),
                    ),),

                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 10.0,right: 20.0),
                    child: new Container(
                      alignment:Alignment.center,
                      height: 60.0,
                      decoration:new BoxDecoration(color: Color(0xFF4364A1),borderRadius:new  BorderRadius.circular(30.0)),
                      child: new Text("FACEBOOK",style: new TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 10.0,right: 20.0),
                    child: new Container(
                      alignment:Alignment.center,
                      height: 60.0,
                      decoration:new BoxDecoration(color: Colors.red,borderRadius:new  BorderRadius.circular(30.0)),
                      child: new Text("Google",style: new TextStyle(color: Colors.white),),
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
