import 'package:flutter/cupertino.dart';

class SetBackRoundImage extends StatelessWidget {
  const SetBackRoundImage({
    Key key,
    this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/back.png",
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
          Positioned(
              top: 10,
              left: 18,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  icon,
                  height: 50,
                  width: 50,
                ),
              ))
        ],
      ),
    );
  }
}
