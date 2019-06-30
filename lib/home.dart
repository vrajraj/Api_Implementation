import 'package:flutter/material.dart';
import './Localevents.dart';
import './globalevent.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            title:Text('My Events',style: TextStyle(color: Colors.white),) ,
            elevation: 8.0,

            backgroundColor: Colors.purple[600],
            bottom: TabBar(
              indicatorColor: Colors.purpleAccent[400],
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 20.0),
              tabs: [
              Tab(text: 'Global',),
              Tab(text: 'local',)
            ],
            ),
          ),
          body: TabBarView(children: <Widget>[

            globalEvent(),
            localEvent()
          ]),
          backgroundColor: Colors.purple[600],
        ));
  }
}
