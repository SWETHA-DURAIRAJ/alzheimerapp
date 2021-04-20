import 'dart:ui';

import 'package:alzheimerapp/about.dart';
import 'package:flutter/material.dart';
import 'package:alzheimerapp/home.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
 /* SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
 ));*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MEMORY APP',
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(1, 4),
                blurRadius: 0.0,
              )
            ],
          ),
          headline: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 20.0,
          ),
        ),
      ),
      home: StartScreen(),
    ); //Material App
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/59/4d/e0/594de05da3f11c96d2e2c288cf72ff57.gif"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "MEMORY HUNT\n",
                     
                      style: Theme.of(context).textTheme.display1,
                    ),
                    /*TextSpan(
                      text: "Train your brain",
                      style: Theme.of(context).textTheme.headline,
                    ),*/
                  ]),
                ),
              ],
            ),
          ),
          FittedBox(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
               /* decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.purpleAccent),*/
                decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color(0x80000000),
                blurRadius: 30.0,
                offset: Offset(0.0, 5.0),
              ),
            ],
            gradient: LinearGradient(
             
              colors: [
                Color(0xFF0000FF),
                Color(0xFFFF3500),
              ],
            )), 
                child: Row(
                  children: <Widget>[
                    new Text ('Let Start the game',
                    style:TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 20,
                    )
                    ),
                    Icon(Icons.arrow_right)
                  ],
                ),
              ),
            ),
          ),
          FittedBox(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return About();
                }));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),

              /* decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
               ) ,*/
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color(0x80000000),
                blurRadius: 30.0,
                offset: Offset(0.0, 5.0),
              ),
            ],
            gradient: LinearGradient(
             
              colors: [
                Color(0xFF0000FF),
                Color(0xFFFF3500),
              ],
            )), 
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_left),
                new Text ('ABOUT',
                    style:TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 20,
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
