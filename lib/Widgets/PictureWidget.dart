import 'dart:math';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 2, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/images/MeTrans.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}
