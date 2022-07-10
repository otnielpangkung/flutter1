import 'package:flutter/material.dart';

import '../shared/theme.dart';

class SelectPic extends StatelessWidget {
  final String title;
  final double rating;
  final String country;
  final String imageUrl;
  const SelectPic({Key? key, required this.title, required this.rating, required this.country, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail");
        },
      child: Container(
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
                  image: DecorationImage(image: AssetImage(imageUrl))),
            ),
            Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(
                  title,
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: semiBold),
                )),
            SizedBox(
              height: 3,
            ),
            Text(country,
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: light)),
          ],
        ),
      ),
    );
  }
}
