import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/costumButton.dart';
import '../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: 831,
        height: 1026,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/airplane-img.png"))),
      ),
      SizedBox(
        height: 521,
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Fly Like A Bird",
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Explore new world with us and  let \n yourself get an amazing experiences",
              style: whiteTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            CostumButton(
              title: "Get Started",
              margin: EdgeInsets.zero,
              width: 220,
              onPress: () {
                Navigator.pushNamed(context, "/signUp");
              },
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      )
    ]));
  }
}
