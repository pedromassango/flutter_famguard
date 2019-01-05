import 'package:flutter/material.dart';

class PanicPage extends StatelessWidget {

  Widget buildStopButton(){
    return Container(
      width: 110,
      height: 32,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black26
          )
        ]
      ),
      child: Center(
        child: Text('Stop'.toUpperCase(),
          style: TextStyle(
            color: Colors.red[600],
          ),
        ),
      ),
    );
  }

  Widget buildPanicButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 8, top: 8),
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
      child: Center(
          child: Text("Panic".toUpperCase(),
            style: TextStyle(
                fontSize: 18,
                color: Colors.red,
              fontWeight: FontWeight.bold
            ),
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 32,
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Hero(
                tag: 'panic',
                child: buildPanicButton(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: buildStopButton(),
            )
          ],
        ),
      ),
    );
  }
}
