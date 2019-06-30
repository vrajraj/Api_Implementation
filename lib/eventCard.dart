import 'package:flutter/material.dart';
import './model/modelEvent.dart';

class eventCard extends StatelessWidget {
  final Event event;
  eventCard({this.event});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(

        elevation: 8,
        margin: EdgeInsets.all(10.0),
       color: Colors.purpleAccent[400],
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(50.0)),),
        child:
        Container(
          height: 80.0,
            child: Center(child: Text(event.eventName,style: TextStyle(fontSize: 20.0,color: Colors.white),))) ,
      ),
    );
  }
}
//Text(event.eventName)