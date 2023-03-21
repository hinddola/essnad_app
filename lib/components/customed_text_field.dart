import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,
        this.controller,
        this.icon,
        this.label,
        this.onchange,
        this.type,
        this.obSecure = false,
        this.inputFormatters
      }) : super(key: key);


  final String? label;
  final IconData? icon;
  final TextEditingController? controller;
  final Function(String)? onchange;
  final bool? obSecure;
  final   List<TextInputFormatter>?inputFormatters;
  final TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70.h,
      child: TextField(
        keyboardType: type,
        controller: controller,
        onChanged: onchange,
        obscureText: obSecure!,
        cursorColor: K.blackTypingColor,
        inputFormatters: inputFormatters,
        style: TextStyle(
            color: K.blackTypingColor,
            fontSize: 16.sp,
            fontFamily: "Raleway",
            fontWeight: FontWeight.w500
        ),
        decoration: InputDecoration(
          // prefixIcon: Icon(ifIconExist==true?icon:null, color: K.grayColor,size: 16.sp,),
          labelText: label,
          labelStyle: TextStyle(
              fontFamily: "Raleway",
              fontSize: 21.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff8E8E93)
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDADADA)),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: K.secondColor.withOpacity(.2)),
          ),
        ),
      ),
    );
  }
}
