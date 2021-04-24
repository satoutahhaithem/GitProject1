import 'dart:ffi';

import 'package:flutter/material.dart';

double myHeight = 20;
Color kBackGroundColor = Color(0xffd9d9d9);
Color kBlueColor = Color(0xff033e8c);
Color kProbablyWhiteColor = Colors.white;
List<BoxShadow> kCircleBoxShadow = [
  new BoxShadow(
    color: Colors.black,
    blurRadius: 6.0,
  )
];
BoxDecoration kCircleBoxDecoration = BoxDecoration(
    shape: BoxShape.circle, color: kBlueColor, boxShadow: kCircleBoxShadow);
TextStyle kTitleTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);
TextStyle kLessonTextStyle = TextStyle(
  color: kProbablyWhiteColor,
  fontWeight: FontWeight.bold,
  fontSize: 23,
);
List<BoxShadow> kCardBoxShadow = [
  new BoxShadow(
    color: Colors.black,
    blurRadius: 6.0,
  )
];
BoxDecoration kCardBoxDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  borderRadius: BorderRadius.all(Radius.circular(10)),
  color: kBlueColor,
  boxShadow: kCardBoxShadow,
);
TextStyle kCurrentCardLessonTextStyle = TextStyle(
  fontFamily: 'Roboto',
  letterSpacing: 3.6530999374389648,
  fontWeight: FontWeight.w500,
  fontSize: 30,
  color: kProbablyWhiteColor,
);
TextStyle kCurrentCardSemestreDateTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 18,
);
BoxDecoration kCurrentCardBoxDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  borderRadius: BorderRadius.all(Radius.circular(15)),
  color: kBlueColor,
  boxShadow: kCardBoxShadow,
);
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your password.',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
