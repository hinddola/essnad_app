import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../const/style.dart';

class LoginCustomText extends StatelessWidget {

  String text;
  Function() ?onPressed;
  double size;
  bool ?isSetteingIcon;
  bool ?isHome;

  LoginCustomText({
    required this.text,
    this.onPressed,
    this.isSetteingIcon,
    this.isHome,
    required this.size,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isSetteingIcon==true?IconButton(color: K.whiteColor.withOpacity(.8), onPressed: (){}, icon: Icon(Icons.settings_outlined,size: 30.sp,),):const Spacer(),
        Spacer(),
        Text(
          text,
          style: TextStyle(
            color: K.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: size.sp,
          ),
        ),
        Spacer(),
        IconButton(color: K.whiteColor, onPressed: onPressed, icon: Icon(isHome!=true?Icons.arrow_forward:null,size: 35.sp,)),
        K.sizedBoxW,
      ],
    );
  }
}
