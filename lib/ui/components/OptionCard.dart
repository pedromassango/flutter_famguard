import 'package:famguard/data/Values.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget{

  final String title;
  final IconData icon;

  OptionCard(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 85,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 0
          )
        ]
      ),
      child: Column(
        children: <Widget>[
          Icon(icon, color: colorGradientBottom,),
          Spacer(),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}