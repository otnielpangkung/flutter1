import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/widget/costumButton.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Container(
              width: 300,
              height: 200,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/card-gradiant.png"))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: whiteTextStyle.copyWith(
                                    fontWeight: light, fontSize: 14),
                              ),
                              Text(
                                "Kezie Anne Salalaaam Mamama",
                                style: whiteTextStyle.copyWith(
                                    fontWeight: medium, fontSize: 20),
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 24,
                          margin: EdgeInsets.only(right: 6),
                          height: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/airplane-icon.png"))),
                        ),
                        Text(
                          "PAY",
                          style: whiteTextStyle.copyWith(
                              fontWeight: light, fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    Text(
                      "Balance",
                      style: whiteTextStyle.copyWith(
                          fontWeight: light, fontSize: 14),
                    ),
                    Text(
                      "IDR 280.000.000",
                      style: whiteTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 26),
                    ),
                  ]),
            ),
            SizedBox(
              height: 91,
            ),
            Container(
              width: 200,
              height: 48,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/big-bonus.png"))),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We give you early credit so that \n you can buy a flight ticket",
              style: greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            CostumButton(
                title: "Start Fly Now",
                margin: EdgeInsets.only(top: 50),
                width: 220,
                onPress: () {
                  Navigator.pushNamed(context, "/home");
                }),
          ],
        ),
      ),
    );
  }
}
