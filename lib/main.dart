import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bonus.dart';
import 'package:flutter_application_1/pages/checkout.dart';
import 'package:flutter_application_1/pages/chooseSeat.dart';
import 'package:flutter_application_1/pages/detail.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/homePhotos.dart';
import 'package:flutter_application_1/pages/signUp.dart';
import 'package:flutter_application_1/pages/splashPage.dart';
import 'package:flutter_application_1/pages/successCheckout.dart';
import '../shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomePage(),
        // '/':(context) => SplashPage(),
        '/home':(context) => HomePage(),
        '/homephoto':(context) => HomePhotosPage(),
        '/detail':(context) => DetailPage(),
        '/chooseseat':(context) => ChooseSeatPage(),
        '/checkout':(context) => CheckOutPage(),
        '/success':(context) => SuccessCheckoutPage (),
        '/signUp':(context) => SignUp(),
        '/getStarted':(context) => GetStartedPage(),
        '/bonus':(context) => BonusPage(),
      }, );
  }
}
