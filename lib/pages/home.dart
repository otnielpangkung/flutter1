import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/widget/costumButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                desinationBox("Lake Ciliung", 4.8, "Tangerang", "assets/lake-ciliung.png"),
                desinationBox("White House", 4.7, "Spain", "assets/white-house.png"),
                desinationBox("hili Heyo", 4.8, "Monaco", "assets/hill-heyo.png"),
                desinationBox("Menara", 5.0, "Japan", "assets/menarra.png"),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text("New This Year", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 18),),
          SizedBox(
            height: 34,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      image: DecorationImage(image: AssetImage("assets/tumb/australia.png"))),
                  ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Danau Berantan", style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),),
                      Text("Singapura",style: greyTextStyle.copyWith(fontWeight: light, fontSize: 14)),
                    ],
                  ),
                   Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/star.png"))),
                    ),
                    Text("4.8")
                ],
                
              )
            ],
          )
        ]),
      ),
    );
  }

  Container desinationBox(
    String title, double rating, String country, String imageUrl
   ) {
    // final String placeDestenation;
    // final String country;
    // final double score;
    return Container(
      margin: EdgeInsets.only(right: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 30,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(defaultRadius))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/star.png"))),
                    ),
                    Text( 
                      rating.toString(),
                      style: blackTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            width: 180,
            height: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                    image: AssetImage(imageUrl))),
          ),
          Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                title,
                style:
                    blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
              )),
          SizedBox(
            height: 3,
          ),
          Text(country,
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: light)),
        ],
      ),
    );
  }
}
