import 'package:flutter/material.dart';
import 'package:week_3/model/modelEvent.dart';
import 'package:week_3/services/firbase.dart';
import './eventCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class localEvent extends StatefulWidget {
  @override
  _localEventState createState() => _localEventState();
}

class _localEventState extends State<localEvent> {
  FirestoreDatabase firestoreDatabase=new FirestoreDatabase();
  @override
  Widget build(BuildContext context) {
    return Container(
      child:StreamBuilder<QuerySnapshot>(
     stream:firestoreDatabase.getLocalEvents(),
      builder: (context,snapshot){
       if(snapshot.hasData){
         var newData=snapshot.data.documents.map((snapshot){
           return Event.fromSnapshot(snapshot);
         }).toList();
         print("Data: $newData");
         return ListView.builder(itemBuilder: (context,index){
           print(newData.length);
           return eventCard(
             event: newData[index],
           );
         });
       }else{
         return Container(child: CircularProgressIndicator(),);
       }
      },)
    );
  }
}
