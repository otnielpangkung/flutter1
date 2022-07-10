import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/widget/costumButton.dart';

class SuccessCheckoutPage extends StatefulWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  State<SuccessCheckoutPage> createState() => _SuccessCheckoutPageState();
}

class _SuccessCheckoutPageState extends State<SuccessCheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/calender.png"))
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 240,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/booked.png"))
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Are you ready to explore the new\nworld of experiences?", style: greyTextStyle.copyWith(fontWeight: light, fontSize: 16),textAlign: TextAlign.center,),
            SizedBox(
              height: 20,
            ),
            CostumButton(title: "My Booking", margin: EdgeInsets.zero, width: 220, onPress: () {})
          
          ],
        ),
      ),
    );
  }
}
