import 'package:final_cvproject/Widgets/ProjectWidget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "Yaptığım Tüm Çalışmalar,\n"
                .richText
                .withTextSpanChildren(
                    ["Okul Projelerim".textSpan.yellow400.make()])
                .xl4
                .white
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                ProjectWidget(title: "Otsu With Thread"),
                ProjectWidget(title: "RSA Service"),
                ProjectWidget(title: "Apertmen Management"),
                ProjectWidget(title: "E-Commerce"),
                ProjectWidget(title: "My Blog Sites"),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ))
          ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}
