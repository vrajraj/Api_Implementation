import 'package:week_3/model/modelEvent.dart';

import './servicesEvents.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDatabase{
  getLocalEvents(){
    return Firestore.instance.collection('localEvents').snapshots();
  }
  storeNewEvent(Event event,context){
    Firestore.instance.collection('localEvents').add({
      'eventName':event.eventName,
      'city':event.city
    }).then((value){

    }).catchError((e){print(e);});

  }
}