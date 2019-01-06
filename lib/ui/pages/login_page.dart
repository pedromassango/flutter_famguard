import 'package:flutter/material.dart';
import 'package:famguard/data/values.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  Widget buildAppLogo() {
    return Hero(
      tag: "app_icon",
      child: ImageIcon(
        AssetImage('images/app_icon.png'),
        size: 80,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: appGradient),
        child: Center(
          child: Column(
            children: <Widget>[
              Spacer(),
              Column(
                children: <Widget>[
                  buildAppLogo(),
                  Text(
                    appName,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Spacer(),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 32),
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Text('Use the button bellow to authenticate using your Google Account.'),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: FlatButton(
                        child: Text(
                          "Google SignIn".toUpperCase(),
                          style: TextStyle(color: colorGradientBottom),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
