import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {

  IconData fontIcon;
  String text;

  CardContent(this.fontIcon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          fontIcon,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: textStyle
        ),
      ],);
  }
}