import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/widget/costumButton.dart';

class ChooseSeatPage extends StatefulWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  State<ChooseSeatPage> createState() => _ChooseSeatPageState();
}

class _ChooseSeatPageState extends State<ChooseSeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  children: [
                    Text("Select Your\nFavorite Seat", style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 24),),
                  ],
                )),
             SizedBox(
              height: 30,
             ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  topSeat("Available", "assets/seat/1.png"),
                  topSeat("Selected", "assets/seat/2.png"),
                  topSeat("Unavailable", "assets/seat/3.png"),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only( right: 16),
                    child: Column(
                      children: [Text(
                        "A",style:greyTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
                        selectSeat("assets/seat/3.png"),
                        selectSeat("assets/seat/1.png"),
                        selectSeat("assets/seat/2.png"),
                        selectSeat("assets/seat/1.png"),
                        selectSeat("assets/seat/1.png"),
                  ]),),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: Column(
                      children: [Text(
                        "A",style:greyTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
                        selectSeat("assets/seat/3.png"),
                        selectSeat("assets/seat/1.png"),
                        selectSeat("assets/seat/2.png"),
                        selectSeat("assets/seat/3.png"),
                        selectSeat("assets/seat/1.png"),
                  ]),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      rowNumber(""),
                      rowNumber("1"),
                      rowNumber("2"),
                      rowNumber("3"),
                      rowNumber("4"),
                      rowNumber("5"),
                  ],),
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: Column(
                      children: [Text(
                        "A",style:greyTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
                        selectSeat("assets/seat/3.png"),
                        selectSeat("assets/seat/1.png"),
                        selectSeat("assets/seat/2.png"),
                        selectSeat("assets/seat/3.png"),
                        selectSeat("assets/seat/1.png"),
                  ]),),Container(
                    margin: EdgeInsets.only(right: 16),
                    child: Column(
                      children: [Text(
                        "A",style:greyTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
                        selectSeat("assets/seat/3.png"),
                        selectSeat("assets/seat/1.png"),
                        selectSeat("assets/seat/2.png"),
                        selectSeat("assets/seat/3.png"),
                        selectSeat("assets/seat/1.png"),
                  ]),),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                child: Row(
                  mainAxisAlignment :MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your seat", style: greyTextStyle.copyWith(fontWeight: light, fontSize: 14),),
                    Text("A3, B3", style: greyTextStyle.copyWith(fontWeight: medium, fontSize: 16),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 22, ),
                child: Row(
                  mainAxisAlignment :MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: greyTextStyle.copyWith(fontWeight: light, fontSize: 14),),
                    Text("Rp. 540.0000.000", style: purpleTextStyle.copyWith(fontWeight: medium, fontSize: 24),),
                  ],
                ),
              ),
              SizedBox(height: 60,),
              CostumButton(
                title: "Continue to Checkout", margin: EdgeInsets.only(top: 24, bottom: 30), width: 300, onPress: () {})
            ]),
          ),
        ],
      ),
    );
  }

  Container rowNumber(
    String rowNumber
  ) {
    return Container(
              margin: EdgeInsets.only(right: 28,left: 28, bottom: 58),
              child: Column(
                children: [
                  Container(
                    child: Column(children: [
                      Text(rowNumber,style:greyTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),),
                    ]),
                  ),                   
            ]),);
  }

  Container selectSeat(
    String seat
  ) {
    return Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(seat))),
                  );
  }

  Row topSeat(
    String title, String icon
  ) {
    return Row(
              children: [
            Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(icon))),
            ),
            Container(
              margin: EdgeInsets.only(left: 6),
              child: Text(title,style: blackTextStyle.copyWith(fontSize: 14,fontWeight: semiBold),))
              ],
            );
  }
}
