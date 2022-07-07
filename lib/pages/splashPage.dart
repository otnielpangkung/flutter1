import 'dart:async';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import '../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, "/getStarted");
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/airplane-icon.png"))),
              ),
              SizedBox(
                height: 50,
              ),
              Text("AIRPLANE",
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: medium, letterSpacing: 10))
            ],
          ),
        ),
        backgroundColor: purpleColor));
  }
}
