import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class SkillBar extends StatefulWidget {
  String skillname;
  int progress;

  SkillBar(this.skillname, this.progress);
  @override
  State<StatefulWidget> createState() {
    return SkillBarState();
  }
}

class SkillBarState extends State<SkillBar> {
  SkillBarState();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.skillname,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
            FAProgressBar(
              currentValue: widget.progress,
              displayText: '%',
              backgroundColor: Colors.red,
              animatedDuration: Duration(milliseconds: 500),
              progressColor: Colors.blue,
            ),
          ],
        ));
  }
}
