import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/Model/timerinfo.dart';
import 'package:provider/provider.dart';

class timer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Timer();
  }
}
class _Timer extends State<timer>{
  int initialvalue=60;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      var timein=Provider.of<timerinfo>(context,listen: false);
      timein.UpdatereamingTime();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Center(child: Column(children: <Widget>[
          Center(child: Icon(Icons.watch_later,size: 50.0,),),
          Center(
            child: Consumer<timerinfo>(builder: (context,data,child){
              return Text(data.getRemainitime().toString(),style: TextStyle(fontSize: 50.0),);
            }),
          )
        ],),),
      ),
    );
  }

}
