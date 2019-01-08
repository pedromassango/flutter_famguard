import 'package:famguard/ui/components/circular_image.dart';
import 'package:flutter/material.dart';

class MemberCard extends StatelessWidget {
  final String imageUrl = "https://celebritypets.net/wp-content/uploads/2016/12/Adriana-Lima.jpg";
  final String memberName;

  MemberCard(this.memberName);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Center(child: Icon(Icons.clear, color: Colors.white,size: 14,)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
