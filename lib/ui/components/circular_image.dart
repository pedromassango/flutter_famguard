import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget{

  final double _width, _height;
  final ImageProvider image;
  final bool _showBorder;

  CircularImage(
      this.image,
      {double width= 40, double height= 40, showBorder = false}
      ): _width = width, _height= height, _showBorder = showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: image),
        border: _showBorder ? Border.all(color: Colors.white, width: 3) : null
      ),
    );
  }


}