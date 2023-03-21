import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class K{
  static const mainColor = Color(0xff014826);
  static const darkGreen = Color(0xff205122);
  static const textColor = Color(0xFF2f8254);
  static const secondColor = Color(0xff34af80);
  static const buttonColor = Color(0xff147868);
  static const checkButtonCollor = Color(0xff9B8F8F);
  //static const smallContainerColor = Color(0xff1C7D66);
  //1C7D66
  static const topLeftGradiantColor = Color(0xff0B736C);
  static const topRightGradiantColor = Color(0xff2C8761);
  static const gradiantFSTColor = Color(0xff12776B);
  static const gradiantSECColor = Color(0xff6DB499);
  static const smallContainerColor = Color(0xffafcdc8);
  static const whiteColor = Color(0xffFAFAFA);
  static const blackTypingColor = Color(0xff555151);
  static const backGroundColor= Color(0xFFB9D7D2);
  static const orangeColor = Color(0xFFF5940A);
  static const grayColor = Colors.black26;
  static const gray1Color = Color(0xff888888);
  static const gray2Color = Color(0xFF7D7575);
  static const searchColor = Color(0xFF31323B);
  static const cardColor = Color(0xFF31323);
  static const splashScreenColor = Color(0xFF404040);
  static const splashStackColor = Color(0xFF595959);
  static const firstColorFirstButton = Colors.red;
  static const secColorFirstButton = Color(0xFFC3040C);
  static const firstColorSecButton = Color(0xFFCFF591);
  static const secColorSecButton = Color(0xFF6DA441);
  static const firstColor3rdButton =Color(0xFFDAD6D7);
  static const secColor3rdtButton = Color(0xFFB0ACAD);
  static const firstColorAddButton =Color(0xFFF5F4F5);
  static const secColorAddButton = Color(0xFFCDD8E6);
  static const fourthColor = Color(0xff91E097);
  static final width = Get.width;
  static final height = Get.height;

  static SizedBox sizedBoxH = SizedBox(
    height: 15.h,
  );
  static SizedBox sizedBoxW = SizedBox(
    width: 22.w,
  );

  static EdgeInsets fixedPadding =  EdgeInsets.symmetric(
      horizontal: 10.0.w,
      vertical: 10.h
  );



  static BoxDecoration boxDecoration = const BoxDecoration(
      color: K.whiteColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      )
  );

  static BoxDecoration TextFieldboxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
        color: K.mainColor,
        style: BorderStyle.solid,
        width: 2),
  );

  static BoxDecoration mainBoxDecoration = const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.bottomRight,
        colors: [
          K.mainColor,
          K.secondColor,
        ],
      )
  );

  static BoxDecoration mainWhiteBoxDecoration = const BoxDecoration(
      color: K.whiteColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      )
  );


  static TextStyle pdfTextStyle= const  TextStyle(
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,
  );


}