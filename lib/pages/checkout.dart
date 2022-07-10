import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/widget/costumButton.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 320,
                      height: 65,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/route.png"))
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("CGK", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 24),),
                    Text("TLC", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 24),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tangerang", style: greyTextStyle.copyWith(fontWeight: light, fontSize: 14),),
                    Text("Ciliwung", style: greyTextStyle.copyWith(fontWeight: light, fontSize: 14),)
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
             
                Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16, left: 15),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          image: (
                          DecorationImage(
                            image: AssetImage("assets/tumb/danau-bratan.png"))
                        )),
                      ),
                      Container(
                        width: 190,
                        child: Column(
                          
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text("Lake Ciluwung", style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 18),),
                            Text("Tangerang", style: greyTextStyle.copyWith(fontWeight: light, fontSize: 14),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16,right: 2),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/star.png"))
                        ),
                      ),
                      Text("4.8", style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text("Booking Details", style: blackTextStyle.copyWith(fontWeight: bold,fontSize: 16),),
                  ],
                ),
                SizedBox(height: 10,),
                checkDetail("Traveler", "2 Person", blackTextStyle.copyWith(fontWeight: bold, fontSize: 14),),
                checkDetail("Seat", "A3, B3", blackTextStyle.copyWith(fontWeight: bold, fontSize: 14)),
                checkDetail("Insurance", "Yes", greenTextStyle .copyWith(fontWeight: bold, fontSize: 14)),
                checkDetail("Refundable", "No", redTextStyle .copyWith(fontWeight: bold, fontSize: 14)),
                checkDetail("V A T", "45%", blackTextStyle .copyWith(fontWeight: bold, fontSize: 14)),
                checkDetail("Price", "Rp. 8.500.690", blackTextStyle .copyWith(fontWeight: bold, fontSize: 14)),
                checkDetail("Grand Total", "Rp. 12.000.000", purpleTextStyle .copyWith(fontWeight: bold, fontSize: 14)),

                SizedBox(height: 60,),
                Row(
                  children: [
                    Text("Payment Details", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),)
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.ce,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16, left: 20),
                      width: 100,
                      height: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/card-gradiant.png"))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Container(
                        margin: EdgeInsets.only(right: 6),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/airplane-icon.png"))
                        ),
                      ),
                      Text("PAY", style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16
                      ),)
                    ]),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("IDR 80.400.000", style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),),
                        Text("Current Balance", style: greyTextStyle.copyWith(fontWeight: reguler, fontSize: 14),),
                      ],
                    ),
                  ],
                  
                ),
                    CostumButton(title: "Pay Now", margin: EdgeInsets.only(top:69), width: 327, onPress: () {})
              ],
            ),
          ),
        ],
      )
    );
  }

  Container checkDetail(
    String title, String detail, colorFont
  ) {
    return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/check.png"))
                      ),
                    ),
                    Text(title,style: greyTextStyle.copyWith(fontSize: 14, fontWeight: reguler),)
                  ],
                ),
                Text(detail, style: colorFont)
              ],
            ),
          );
  }
}