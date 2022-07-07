import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/getStarted.dart';

import 'package:flutter/material.dart';
import '../shared/theme.dart';

class CostumButton extends StatelessWidget {
  final String title;
  final EdgeInsets margin;
  final double width;
  final Function() onPress;
  const CostumButton({Key? key, required this.title, required this.margin, required this.width, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        onPressed: onPress,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 18),
        ),
      ),
    );
  }
}
