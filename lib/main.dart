import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(Profile());

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "profile",
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("seoungmin", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "Anton"),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Web Programmer", style: TextStyle(color: Colors.white),),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 190,
                      height: 33,
                      color: Colors.white,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.call),
                            GestureDetector(
                                onTap: () => launch("tel://821045485350"),
                                child: Text(
                                    "+82 1045485350",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 190,
                      height: 33,
                      color: Colors.white,
                      child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.mail),
                              GestureDetector(
                                  onTap: () => launch("mailto:seoungmin104@gmail.com"),
                                  child: Text(
                                    "seoungmin104@gmail.com",
                                    style: TextStyle(
                                        fontSize: 13,
                                    ),
                                  )
                              ),
                            ],
                          )
                      ),
                    )
                  ],
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/me.jpg", scale: 3.0, fit: BoxFit.fill,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
