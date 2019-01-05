import 'package:famguard/ui/components/PanicButton.dart';
import 'package:flutter/material.dart';

class PanicPage extends StatelessWidget {

  Widget buildStopButton(){
    return Container(
      width: 110,
      height: 33,
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

  Widget buildPanicOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.favorite, size: 40, color: Colors.white,),
            Text('Healt',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: <Widget>[
              Icon(Icons.announcement, size: 40, color: Colors.white,),
              Text('Robbery', style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Icon(Icons.business, size: 40, color: Colors.white,),
            Text('Disaster', style: TextStyle(color: Colors.white),)
          ],
        ),
      ],
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
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'panic',
                    child: PanicButton(backgroundColor: Colors.white,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: buildPanicOptions(),
                  )
                ],
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
