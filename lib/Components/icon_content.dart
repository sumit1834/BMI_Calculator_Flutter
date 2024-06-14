import 'package:flutter/material.dart';
import 'constant.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.iconx, required this.lable});

  final IconData iconx;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconx,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          lable,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}
