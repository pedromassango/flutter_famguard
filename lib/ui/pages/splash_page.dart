import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectivity/connectivity.dart';
import 'package:famguard/data/values.dart';
import 'package:famguard/data/shared_preferences_helper.dart';

class SplashPage extends StatefulWidget {
  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends State<SplashPage> {
  BuildContext _context;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);

    // delay by one second before handling navigation
    Future.delayed(
      Duration(seconds: 3), () async {

        // if phone is connect then check if user is logged in or not
        // if logged go to home page, login page otherwise
        var connectivity = await Connectivity().checkConnectivity();
        if(connectivity == ConnectivityResult.mobile ||
            connectivity == ConnectivityResult.wifi){
          var prefs = SharedPreferencesHelper();
          prefs.isLoggedIn()
          .then((value){
            if(value == null){
              Navigator.pushNamed(context,'/login');
            }else {
              Navigator.pushNamed(context, value ? '/home' : '/login');
            }
          });
        }else{
          _scaffoldKey.currentState.showSnackBar(
            SnackBar(
                content: Text('No internet connection!'),
              duration: Duration(seconds: 10),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      key: _scaffoldKey,
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
