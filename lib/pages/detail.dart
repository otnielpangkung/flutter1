import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/widget/costumButton.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/lake-ciliung.png"))),
            ),
            Container(
              margin: EdgeInsets.only(top: 236),
              width: double.infinity,
              height: 214,
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter ,end: Alignment.bottomCenter, colors: [whiteColor.withOpacity(0),Colors.black.withOpacity(1)])
              ),
            ),
            Column(
              children: [
                Container(
                  width: 108,
                  height: 24,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/whiteGlobe.png"))),
                ),
                SizedBox(
                  height: 
                  256
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text("Lake Ciliung", style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 24),),
                          Text("Tangerang", style: whiteTextStyle.copyWith(fontWeight: light, fontSize: 16),)
                        ],
                      ),
                      
                      Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(image: (DecorationImage(image: AssetImage("assets/star.png")))),
                          ),
                          Text("4.8", style: whiteTextStyle.copyWith(fontWeight:semiBold, fontSize: 14))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  width: double.infinity,
                  height: 446,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(defaultRadius)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("About", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),),
                      SizedBox(height: 6),
                      Text("Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                        style: blackTextStyle.copyWith(fontWeight: reguler, fontSize: 14, height: 2),
                        // overflow: TextOverflow.visible,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Photos", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
