import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/widget/costumButton.dart';
import 'package:flutter_application_1/widget/costumTextIput.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(height: 50),
        Container(
          margin: EdgeInsets.only(left: 24),
          child: Text("Join us and get \n your next journey",
              style:
                  blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 24)),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(children: [
            CostumTextInput(title: "Full Name"),
            CostumTextInput(title: "Email Address"),
            CostumTextInput(title: "Password"),
            CostumTextInput(title: "Hobby"),
          ]),
        ),
        CostumButton(
          title: "Get Started",
          margin: EdgeInsets.symmetric(horizontal: 44),
          width: 50,
          onPress: () {
            Navigator.pushNamed(context, "/bonus");
          },
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            alignment: Alignment.center,
            child: Text(
              "Term and Condition",
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light), 
            )),
        SizedBox(
          height: 30,
        )
      ]),
    );
  }
}
