import 'package:famguard/ui/components/CircularImage.dart';
import 'package:flutter/material.dart';

class MemberCard extends StatelessWidget {
  final String imageUrl = "https://celebritypets.net/wp-content/uploads/2016/12/Adriana-Lima.jpg";
  final String memberName;

  MemberCard(this.memberName);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 100,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CircularImage(NetworkImage(imageUrl)),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(memberName),
              )
            ],
          ),
        ),
      ),
    );
  }
}
