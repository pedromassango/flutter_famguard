import 'package:flutter/material.dart';
import 'package:famguard/data/values.dart';

class LoginPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: appGradient
        ),

      ),
    );
  }
}