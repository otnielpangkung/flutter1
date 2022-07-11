import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/widget/costumButton.dart';

import '../widget/selectPic.dart';

class GoHomePage extends StatelessWidget {
  const GoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Howdy\nKezia Anne",
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 24,
                      )),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/profile.png"))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Where to fly today?",
              style: greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // SelectPic(title: title, rating: rating, country: country, imageUrl: imageUrl)
                  SelectPic(
                      title: "Lake Ciliung",
                      rating: 4.8,
                      country: "Tangerang",
                      imageUrl: "assets/lake-ciliung.png"),
                  SelectPic(
                      title: "White House",
                      rating: 4.7,
                      country: "Spain",
                      imageUrl: "assets/white-house.png"),
                  SelectPic(
                      title: "hili Heyo",
                      rating: 4.8,
                      country: "Monaco",
                      imageUrl: "assets/hill-heyo.png"),
                  SelectPic(
                      title: "Menara",
                      rating: 5.0,
                      country: "Japan",
                      imageUrl: "assets/menarra.png"),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 18),
            ),
            SizedBox(
              height: 34,
            ),
            tumbBox("Danau Berandatan", "singaraja",
                "assets/tumb/danau-bratan.png", 4.5),
            tumbBox(
                "Sydney Opera", "Australia", "assets/tumb/australia.png", 4.7),
            tumbBox("Roma", "Italya", "assets/tumb/roma.png", 4.8),
            tumbBox("Payung Teduh", "Singapore", "assets/tumb/payung teduh.png",
                4.5),
            tumbBox("Hill Hey", "Monaco", "assets/tumb/hill-hey.png", 4.7),
          ]),
          SizedBox(
            height: 140,
          )
        ],
      ),
    );
  }
  }


Container tumbBox(
    String title,
    String country,
    String photo,
    double rating,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(image: AssetImage(photo))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Danau Berantan",
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 18),
                  ),
                  Text("Singapura",
                      style: greyTextStyle.copyWith(
                          fontWeight: light, fontSize: 14)),
                ],
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/star.png"))),
              ),
              Text(rating.toString())
            ],
          )
        ],
      ),
    );
  }
