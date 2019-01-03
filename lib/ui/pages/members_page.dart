import 'package:famguard/data/Values.dart';
import 'package:famguard/ui/components/MemberCard.dart';
import 'package:flutter/material.dart';

class MembersPage extends StatelessWidget {

  final List<String> members = [
    'Emily', 'Paula',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: double.maxFinite,
              color: colorGradientTop,
              child: Container(
                margin: EdgeInsets.only(top: 25, bottom: 20, left: 40, right: 40),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/qr_code.png'))
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              shrinkWrap: true,
              children: members.map((name){
                return MemberCard(name);
              }).toList(),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          backgroundColor: colorGradientTop,
          onPressed: () {}),
    );
  }
}
