import 'package:famguard/data/Values.dart';
import 'package:famguard/ui/components/CircularImage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String imageUrl = "https://celebritypets.net/wp-content/uploads/2016/12/Adriana-Lima.jpg";

  List<Widget> _navigationWidgetList = [
    IconButton(
      icon: Icon(Icons.add_alert, color: Colors.white,),
      padding: EdgeInsets.all(32),
    ),
    IconButton(
      icon: Icon(Icons.apps, color: Colors.white,),
      padding: EdgeInsets.all(32),
    ),
    IconButton(
      icon: Icon(Icons.settings, color: Colors.white,),
      padding: EdgeInsets.all(32),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: _navigationWidgetList,
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
