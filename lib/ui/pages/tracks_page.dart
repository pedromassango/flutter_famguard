import 'package:famguard/data/Values.dart';
import 'package:famguard/ui/components/TrackCard.dart';
import 'package:flutter/material.dart';

class TracksPage extends StatelessWidget {
  List<String> members = ['Emily', 'Paula'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorGradientTop,
        title: Text("Track"),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return TrackCard(members.elementAt(index));
        },
      ),
    );
  }
}
