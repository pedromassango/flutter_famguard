import 'package:famguard/ui/components/PanicButton.dart';
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
                child: PanicButton(backgroundColor: Colors.white,),
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
