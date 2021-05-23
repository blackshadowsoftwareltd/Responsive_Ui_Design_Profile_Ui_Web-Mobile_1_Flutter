import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget IconLabelButtons(String lebel, String path) => TextButton.icon(
    onPressed: () => print('pressed'),
    icon: SvgPicture.asset(
      path,
      width: 20,
      color: Colors.white,
    ),
    label: Text(lebel, style: TextStyle(color: Colors.white)));

Widget TextButtons(String label, Color color) => TextButton(
    child: Text(label,
        style: TextStyle(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: .5)),
    onPressed: () {});

Widget LogoButton(String path) => Container(
    margin: EdgeInsets.symmetric(horizontal: 3),
    child: IconButton(
        icon: SvgPicture.asset(path, width: 15, color: Colors.white),
        onPressed: () {}));

Widget NormalButton(String label, Color txtcolor, String path, Color iconColor,
        Color backColor) =>
    InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 3),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
              color: backColor, borderRadius: BorderRadius.circular(5)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            if (path != '') Image.asset(path, color: iconColor, width: 15),
            if (path != '') SizedBox(width: 5),
            Text(label,
                style: TextStyle(
                    fontSize: 10, color: txtcolor, fontWeight: FontWeight.w700))
          ])),
    );

Widget ColorLogoButton(String path) => Container(
    margin: EdgeInsets.symmetric(horizontal: 3),
    child:
        IconButton(icon: SvgPicture.asset(path, width: 20), onPressed: () {}));
