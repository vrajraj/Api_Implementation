import 'package:flutter/material.dart';
import './eventCard.dart';
import './services/servicesEvents.dart';
import 'package:week_3/services/firbase.dart';
class globalEvent extends StatefulWidget {
  @override
  _globalEventState createState() => _globalEventState();
}

class _globalEventState extends State<globalEvent> {

  FirestoreDatabase firestoreDatabase = FirestoreDatabase();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future:getEvents() ,
          builder: (context,snapshot){
            print(snapshot.data);
            if (snapshot.hasData){
            return ListView.builder(
                itemCount:6,
                itemBuilder: (context,index)=> eventCard(event: snapshot.data[index],));

      }
          else return CircularProgressIndicator();
          }),
    );
  }
}
