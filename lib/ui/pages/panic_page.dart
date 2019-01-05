import 'package:famguard/ui/components/PanicButton.dart';
import 'package:flutter/material.dart';

class PanicPage extends StatelessWidget {

  final baseRedColor = Colors.red[600];

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
            color: baseRedColor,
          ),
        ),
      ),
    );
  }

  Widget buildCircularContainer(AssetImage _icon){
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(32)),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black26
          )
        ]
      ),
      child: Center(
        child: ImageIcon(_icon, color: baseRedColor,),
      ),
    );
  }

  Widget buildPanicOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            buildCircularContainer(AssetImage('images/ic_healt.png')),
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
              buildCircularContainer(AssetImage('images/ic_robbery.png')),
              Text('Robbery', style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
        Column(
          children: <Widget>[
            buildCircularContainer(AssetImage('images/ic_disaster.png')),
            Text('Disaster', style: TextStyle(color: Colors.white),)
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseRedColor,
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
