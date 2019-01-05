import 'package:flutter/material.dart';

class PanicButton extends StatelessWidget{

  final Color _backgroundColor;

  PanicButton({Color backgroundColor = Colors.red})
      : this._backgroundColor = backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8, top: 8),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
      child: Center(
          child: Text("Panic".toUpperCase(),
            style: TextStyle(
                fontSize: 18,
                color: _backgroundColor == Colors.red ? Colors.white : Colors.red,
                fontWeight: FontWeight.bold
            ),
          )
      ),
    );
  }
}