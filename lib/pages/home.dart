import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/page_cubit.dart';
import 'package:flutter_application_1/pages/book.dart';
import 'package:flutter_application_1/pages/card.dart';
import 'package:flutter_application_1/pages/getStarted.dart';
import 'package:flutter_application_1/pages/globe.dart';
import 'package:flutter_application_1/pages/goHome.dart';
import 'package:flutter_application_1/pages/setting.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/widget/costumButton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import '';
import '../widget/navigationMenu.dart';
import '../widget/selectPic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
          body: Stack(
            children: [bodyHome(), navigationBar()],
          ),
        );
      }

  Align navigationBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationMenu(icon: "assets/globe.png", index: 0),
              NavigationMenu(icon: "assets/book.png", index: 1),
              NavigationMenu(icon: "assets/card.png", index: 2),
              NavigationMenu(icon: "assets/setting.png", index: 3),
            ],
          )),
    );
  }

  Widget bodyHome() {
    // switch () {
    //   case 0:
    //     return GoHomePage();
    //   case 1:
    //     return BookPage();
    //   case 2:
    //     return CardPage();
    //   case 3:
    //     return SettingPage();
    //   default:
    // }
    return GoHomePage();
  }

  

// TumbBox
  

// DestinationBox

}
