import 'package:famguard/data/values.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget{

  @override
  State createState() {
    return _SettingsPageState();
  }
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: colorGradientTop,
        title: Text("Settings"),
      ),
    );
  }
}