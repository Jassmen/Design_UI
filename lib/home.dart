import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginto.dart';

class HomePage extends StatefulWidget {
  /* we create StateFull widget COZ we need an app bar and nvegtor bar on the buttom*/
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        /** we create an app bare that contain back arrow we we click it , it tacks me back **/
        elevation: 0.0,
        /** to delete the shaw **/
        iconTheme: new IconThemeData(color: Color(0xFF12D191)),
      ),
      body: MainContent(),
      bottomNavigationBar: new BottomNavigationBar(
        fixedColor: Color(0xFF29D191),
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: Text('Home')
          ),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.local_post_office),
              title: Text('Message')
          ),
        ],


      ),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
          child: new Container(
            /** this is the main container **/
            child: new Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Text(
                      "Explorer",
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Container(
                        height: 100.0,
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color(0xFFFD7384)),
                        /**Hn3ml column gwa el container 3l4n a7ot icon we t7tha text tb3n kol da gwa el row elly hwa gwa el listView */
                        child: new GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => LoginTo()
                            ));
                          },
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Icon(
                                Icons.directions_car,
                                color: Colors.white,
                              ),
                              new Text(
                                "Motor",
                                style: new TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    /** Expanded Kbeer gwah Expanded so8yreen **/
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Container(
                          height: 100.0,
                          child: new Column(
                            children: <Widget>[
                              Expanded(
                                child: new Container(
                                  margin: const EdgeInsets.only(bottom: 5.0),
                                  decoration: new BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                      color: Color(0xFF2BD090)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: new Icon(
                                          Icons.local_offer,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text("Classefied",
                                          style: new TextStyle(
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                      color: Color(0xFFFC7840)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: new Icon(
                                          Icons.beenhere,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text("Servie",
                                          style: new TextStyle(
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    /** Expanded Kbeer gwah Expanded so8yreen **/
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Container(
                          height: 100.0,
                          child: new Column(
                            children: <Widget>[
                              Expanded(
                                child: new Container(
                                  margin: const EdgeInsets.only(bottom: 5.0),
                                  decoration: new BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                      color: Color(0xFF53CEDB)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: new Icon(
                                          Icons.account_balance,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text("Properties ",
                                          style: new TextStyle(
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(5.0),
                                      color: Color(0xFFF1B069)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: new Icon(
                                          Icons.art_track,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text("Job",
                                          style: new TextStyle(
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "Popular Trending",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Expanded(
                      child: new Text(
                        "View All",
                        style: new TextStyle(
                            color: Color(0xFF2BDEFF), fontSize: 18.0),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                new Row(children: <Widget>[
                  Expanded(
                      child: new Container(
                    height: 250.0,
                    padding: const EdgeInsets.all( 8.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 200.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                                image: new NetworkImage(
                                    'https://images.pexels.com/photos/3755932/pexels-photo-3755932.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        new Text("Play Station",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.right,),
                      ],
                    ),
                  )
                  ),
                  Expanded(
                      child: new Container(
                    height: 250.0,
                    padding: const EdgeInsets.all(8.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 200.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                                image: new NetworkImage(
                                    'https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        new Text("Jewellery ",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.right,),
                      ],
                    ),
                  )),
                  Expanded(
                      child: new Container(
                    height: 250.0,
                    padding: const EdgeInsets.all(8.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 200.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            image: new DecorationImage(
                                image: new NetworkImage(
                                    'https://images.pexels.com/photos/1926620/pexels-photo-1926620.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        new Text("Makeup",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.right,),
                      ],
                    ),
                  )),
                ]),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "Popular Trending",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Expanded(
                      child: new Text(
                        "View All",
                        style: new TextStyle(
                            color: Color(0xFF2BDEFF), fontSize: 18.0),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                new Row(children: <Widget>[
                  Expanded(
                      child: new Container(
                        height: 250.0,
                        padding: const EdgeInsets.all( 8.0),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 200.0,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://images.pexels.com/photos/196666/pexels-photo-196666.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text("Shoes",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.right,),
                          ],
                        ),
                      )
                  ),
                  Expanded(
                      child: new Container(
                        height: 250.0,
                        padding: const EdgeInsets.all(8.0),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 200.0,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://images.pexels.com/photos/426862/pexels-photo-426862.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text("Bags ",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.right,),
                          ],
                        ),
                      )),

                ]),
                new SizedBox(
                  height: 10.0,
                ),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "Popular Trending",
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Expanded(
                      child: new Text(
                        "View All",
                        style: new TextStyle(
                            color: Color(0xFF2BDEFF), fontSize: 18.0),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
                new Row(children: <Widget>[
                  Expanded(
                      child: new Container(
                        height: 250.0,
                        padding: const EdgeInsets.all( 8.0),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 200.0,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://images.pexels.com/photos/1020370/pexels-photo-1020370.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text("Malls",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.right,),
                          ],
                        ),
                      )
                  ),
                  Expanded(
                      child: new Container(
                        height: 250.0,
                        padding: const EdgeInsets.all(8.0),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 200.0,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://images.pexels.com/photos/908629/pexels-photo-908629.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            new Text("Watches ",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.right,),
                          ],
                        ),
                      )),
                  Expanded(
                      child: new Container(
                        height: 250.0,
                        padding: const EdgeInsets.all(8.0),
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 200.0,
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://images.pexels.com/photos/2690323/pexels-photo-2690323.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            new Text("Fashion",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.right,),
                          ],
                        ),
                      )),
                ])

              ],
            ),
          ),
        ),
      ],
    );
  }
}
