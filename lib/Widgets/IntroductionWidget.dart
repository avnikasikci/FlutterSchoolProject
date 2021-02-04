import 'package:final_cvproject/CollectionColor/CollectionColor.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "Necmettin Erbakan Üniversitesinde Öğrenci kendini geliştirmeyi seven kücük bir developer."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        RaisedButton(
          onPressed: () {
            launch("https://avnikasikci.github.io/");
          },
          hoverColor: Vx.purple700,
          shape: Vx.roundedSm,
          color: Coolors.accentColor,
          textColor: Coolors.primaryColor,
          child: "Sitemi Ziyaret Edin.".text.make(),
        ).h(50)
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
