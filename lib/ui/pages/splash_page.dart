import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:famguard/data/values.dart';

class SplashPage extends StatefulWidget {
  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);

    // delay by one second before navigate to home page
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, "/home"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(gradient: appGradient),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: "app_icon",
                  child: ImageIcon(
                    AssetImage('images/app_icon.png'),
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                Text(
                  appName,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
