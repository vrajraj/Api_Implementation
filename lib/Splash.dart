import 'package:flutter/material.dart';
import './home.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () =>  Navigator.pushReplacement(context,
      new MaterialPageRoute(builder: (context) => Home()),
    )
    );
  }
  Widget build(BuildContext context) {
    return new Scaffold(
backgroundColor: Colors.purple[600],
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Container(
              
              child: Image.network("https://itsallwidgets.com/images/logo.png"),
            ),
            
          ],
        )
    );
  }
}