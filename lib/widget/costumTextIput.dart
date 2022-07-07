import 'dart:ffi';

import 'package:flutter/material.dart';
import '../shared/theme.dart';

class CostumTextInput extends StatelessWidget {
final String title;

  const CostumTextInput({
    Key? key, required this.title, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              title,
              style: blackTextStyle.copyWith(fontWeight: reguler, fontSize: 14),
            ),
            margin: EdgeInsets.only(bottom: 6),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius)),
            ),
          )
        ],
      ),
    );
  }
}
