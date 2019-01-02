import 'package:famguard/data/Values.dart';
import 'package:famguard/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/home': (context) => HomePage(),
      },
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    // delay by one second before navigate to home page
    Future.delayed( Duration(seconds: 1), () => Navigator.pushNamed(context, "/home"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF6137D7),
                    Color(0xFFBC3358),
                  ],
                  stops: [0,0.7]
              )
          ),
          child: Center(
            child: Text(
              appName,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
