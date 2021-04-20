//import 'dart:html';

import 'package:alzheimerapp/quiz1.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/src/widgets/framework.dart';

class Intro extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<Intro> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Quiz1())));
      Text("$Timer");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assests/home.jpg'),
        )),
      ),
          );
   
  }
}
