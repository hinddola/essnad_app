import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/style.dart';

class CustomedContainer extends StatelessWidget {

  double ?width;
  double ?height;
  Widget ?child;

  CustomedContainer ({
    Key? key,
    this.width,
    required this.height,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity.w,
          height: height,
          decoration: const BoxDecoration(
            color: K.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30) ,
              topRight: Radius.circular(30),
            ),
          ),
          child: child,
        ),
      ),
    );

  }
}
