import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget{


  @override
  State createState() {
    return _AlertPageState();
  }
}

class _AlertPageState extends State<AlertPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      body: Container(
        child: Center(
          child: Container(
            width: 140,
            height: 140,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Colors.black26
                  )
                ]
            ),
            child: Center(
              child: ImageIcon(AssetImage('images/ic_healt.png'),size: 100, color: Colors.red,),
            ),
          ),
        ),
      ),
    );
  }
}