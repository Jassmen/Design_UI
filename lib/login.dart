import 'package:flutter/material.dart';
import 'package:ui_designing/stacked_icons.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     // backgroundColor: Colors.black,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,  /** we create an app bare that contain back arrow we we click it , it tacks me back **/
        elevation: 0.0, /** to delete the shaw **/
        iconTheme: new IconThemeData(color: Color(0xFF12D191)),
      ),
      body: Container(
        width: double.infinity,
        //// To bring it to the center Horizontal
        child: new Column(
          children: <Widget>[
            new StackIcons(),
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
            new TextField(
              decoration: new InputDecoration(
                labelText: 'Email',
                contentPadding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                hintStyle:new TextStyle(color: Colors.black,fontSize: 20.0) ,
                //border: OutlineInputBorder(),
              ),
            ),
            new SizedBox( /** Make space between the textField */
              height: 30.0,
            ),
            new TextField(
              obscureText: true, /** To hide the password **/
              decoration: new InputDecoration(
                  labelText: 'Password',
                contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 50.0,right: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));

                      },
                      child: new Container(
                        alignment:Alignment.center,
                        height: 60.0,
                        decoration:new BoxDecoration(color: Color(0xFF12D191),borderRadius:new  BorderRadius.circular(10.0)),
                        child: new Text("Login",style: new TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60.0,right: 30.0),
                    child: new Container(
                      alignment:Alignment.center,
                      height: 60.0,
                      child: new Text("Forget password? ",style: new TextStyle(color: Color(0xFF12D191),fontSize: 20.0),),
                    ),
                  ),
                )
              ],
            ),
           Expanded(
             child: new Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Padding(  padding: const EdgeInsets.only(bottom: 18.0),
             child: new Text("Create a new Account ",style: new TextStyle(color: Color(0xFF12D191),fontSize: 20.0,fontWeight: FontWeight.bold))),
               ],
             ),
           )

          ],
        ),
      ),

    );
  }
}
