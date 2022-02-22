import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DBSLogo() {
  return Opacity(
    opacity: 0.1,
    child: Center(
      child: Image.asset(
        'assets/Icone-DBS-07.png',
        width: 300,
        height: 300,
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget DBSAppBar() {
  return Center(
    child: Image.asset(
      'assets/Icone-DBS-06.png',
      width: 30,
      height: 30,
      fit: BoxFit.fill,
    ),
  );
}

Widget DBSImage(double h, double w, double op) {
  return Center(
    child: Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/Icone-DBS-03.png'),
        colorFilter:
            ColorFilter.mode(Colors.white.withOpacity(op), BlendMode.dstIn),
      )),
    ),
  );
}

Widget DBSTutorials() {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: "Click ",
        ),
        WidgetSpan(
          child: DBSImage(120, 120, 0.8),
        ),
        TextSpan(
          text: " to add",
        ),
      ],
    ),
  );
}
