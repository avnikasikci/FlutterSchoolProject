import 'package:final_cvproject/CollectionColor/CollectionColor.dart';
import 'package:final_cvproject/components/CustomAppBar.dart';
import 'package:final_cvproject/components/SocialAccounts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Benimle çalışmak istermisin ?\nHadi Gel Konuşalım!"
                  .text
                  .center
                  .white
                  .xl2
                  .make(),
              10.heightBox,
              "avni.kasikci.01@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            // web için tasarlandı ilerde lazım olcak.
            [
              "Benimle çalışmak istermisin ?\nHadi Gel Konuşalım!"
                  .text
                  .center
                  .white
                  .xl2
                  .make(),
              10.widthBox,
              "avni.kasikci.01@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Sayfayı Kaydırdığınız için teşekkürler, "
            .richText
            .semiBold
            .white
            .withTextSpanChildren([
          "Bu platformlardan yaptığım işleri görebilirsiniz.."
              .textSpan
              .gray500
              .make()
        ]).make(),
        10.heightBox,
        SocialAccounts(),
        30.heightBox,
        [
          "Made in Turkey with".text.red500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
