import 'package:famguard/ui/pages/alert_page.dart';
import 'package:famguard/ui/pages/home_page.dart';
import 'package:famguard/ui/pages/login_page.dart';
import 'package:famguard/ui/pages/members_page.dart';
import 'package:famguard/ui/pages/panic_page.dart';
import 'package:famguard/ui/pages/settings_page.dart';
import 'package:famguard/ui/pages/splash_page.dart';
import 'package:famguard/ui/pages/tracks_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Famguard',
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/home': (context) => HomePage(),
        '/members': (context) => MembersPage(),
        '/tracks': (context) => TracksPage(),
        '/panic': (context) => PanicPage(),
        '/alert': (context) => AlertPage(),
        '/login': (context) => LoginPage(),
        '/settings': (context) => SettingsPage()
      },
    );
  }
}