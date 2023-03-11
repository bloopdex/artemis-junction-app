import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const images = 'assets/images/';
const icons = 'assets/icons/';

const kBlue = Color(0xFF0059FF);
const kLightBlue = Color(0xFF08B0F9);
const kBlack = Color(0xFF232323);
const kGreen = Color(0xFF84E8F8);
const kRed = Color(0xFFFF0000);
const kGrey = Color(0xFFF2F2F2);
const kStrokeColor = Color(0xFFD1D1D6);
const kLightIconColor = Color(0xFF84E8F8);
const kGreyStaticWidget = Color(0xFF898989);

final kCornerRadius = 20.sp;

final kStaticsContainerDecoration = BoxDecoration(
  color: kGrey,
  borderRadius: BorderRadius.all(Radius.circular(kCornerRadius)),
  border: Border.all(color: kStrokeColor, width: 1.sp),
);

const String uri = 'https://localserver:5000/api';
const String socketUri = "https://localserver:5000/";

String? validateEmail(String? value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty || !regex.hasMatch(value)) {
    return 'Enter Valid Email';
  } else {
    return null;
  }
}

String? validatePassword(String? value) {
  if (value == null) {
    return 'Please enter password';
  } else if (value.isEmpty) {
    return 'Please enter password';
  } else {
    if (value.length < 10) {
      return 'Password  must be of 10 character';
    } else {
      return null;
    }
  }
}
