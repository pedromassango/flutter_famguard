import 'package:famguard/data/Values.dart';
import 'package:famguard/ui/components/CircularImage.dart';
import 'package:famguard/ui/components/OptionCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String imageUrl = "https://celebritypets.net/wp-content/uploads/2016/12/Adriana-Lima.jpg";



  Widget buildCustomAppBar() {

    List<Widget> _navigationWidgetList = [
      IconButton(
        onPressed: (){},
        icon: Icon(Icons.add_alert, color: Colors.white,),
        padding: EdgeInsets.all(32),
      ),
      IconButton(
        onPressed: (){},
        icon: Icon(Icons.apps, color: Colors.white,),
        padding: EdgeInsets.all(32),
      ),
      IconButton(
        onPressed: (){},
        icon: Icon(Icons.settings, color: Colors.white,),
        padding: EdgeInsets.all(32),
      ),
    ];

    return Container(
      height: 190,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                gradient: appGradient,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(80),
                    bottomLeft: Radius.circular(80)
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black54, blurRadius: 15)
                ]
            ),

          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: CircularImage(NetworkImage(imageUrl), width: 90, height: 90,showBorder: true,),
          ),

          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _navigationWidgetList,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        OptionCard('Track', Icons.track_changes),
        OptionCard('Member', Icons.people),
        OptionCard('Public Info', Icons.question_answer),
      ],
    );
  }

  Widget buildPanicButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 8, top: 8),
      width: 110,
      height: 110,
      decoration: BoxDecoration(
          color: Colors.red[700],
          borderRadius: BorderRadius.all(Radius.circular(60)),
          boxShadow: [
            BoxShadow(color: Colors.black45, blurRadius: 5)
          ]
      ),
      child: Center(
          child: Text("Panic".toUpperCase(),
            style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          buildCustomAppBar(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Switch(value: true, onChanged: (v){}, activeColor: colorGradientTop,),
                    Text('Active Track', ),
                  ],
                ),
              ),
          Container(
            color: Colors.grey[400],
            height: 125,
            width: double.maxFinite,
            child: Image(image: AssetImage('images/maps.jpg',),
              fit: BoxFit.cover,
            ),
          ),
          Spacer(),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: <Widget>[
                  buildOptions(),
                  buildPanicButton(),
                  Text("Click 3 times to send emergency message",
                  style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
