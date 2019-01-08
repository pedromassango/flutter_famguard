import 'package:famguard/ui/components/panic_button.dart';
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

  Widget buildCircularContainer(String title, AssetImage _icon){
    return Column(
      children: <Widget>[
        Container(
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
        ),
        Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

  Widget buildPanicOptions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: buildCircularContainer('Health', AssetImage('images/ic_healt.png')),
          onTap: () => Navigator.of(context).pushNamed('/alert'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: GestureDetector(
            child: buildCircularContainer('Robbery', AssetImage('images/ic_robbery.png')),
            onTap: () => Navigator.of(context).pushNamed('/alert'),
          ),
        ),
        GestureDetector(
          child: buildCircularContainer('Disaster', AssetImage('images/ic_disaster.png')),
          onTap: () => Navigator.of(context).pushNamed('/alert'),
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
                    child: buildPanicOptions(context),
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
