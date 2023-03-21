import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../const/style.dart';
import '../screens/home_screen/controller/home_screen_controller.dart';
import '../screens/services_screen/controller/carousel_slider_controller.dart';

class CustomeServicesCard extends StatelessWidget {

  String ?image;
  String ?text;
  Color ?color;
  Function() ?onTap;
  bool ?isHomeScreen;
  final CarouselSliderController controller;


  CustomeServicesCard ({
    Key? key,
    required this.controller,
    required this.color,
    required this.image,
    required this.isHomeScreen,
    required this.onTap,
    required this.text

  }) : super(key: key);

  //final caroController = Get.put(CarouselController());


  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: K.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
            )
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40.h,
                decoration: BoxDecoration(
                  color: color,
                  // borderRadius: BorderRadius.circular(20),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20) ,
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              K.sizedBoxH,
              K.sizedBoxH,
              Container(
                width: 80.w,
                height: 60.h,
                child: Image.asset(
                    '$image',
                  fit: BoxFit.contain,
                ),

              ),
              K.sizedBoxH,
              K.sizedBoxH,
              Text(
                '$text',
              )

            ],
          ),
        ),

      ),
    );

    // return Card(
    //   margin: EdgeInsets.zero,
    //   shape: RoundedRectangleBorder(
    //       borderRadius: isHomeScreen==true?
    //       BorderRadius.circular(20):
    //       const BorderRadius.only(
    //         topLeft: Radius.circular(20.0),
    //         topRight: Radius.circular(20.0),
    //         bottomRight: Radius.circular(20.0),
    //         bottomLeft: Radius.circular(20.0),
    //       ),
    //   ),
    //   shadowColor: K.grayColor,
    //   elevation: 5,
    //   child: ClipPath(
    //     clipper: ShapeBorderClipper(
    //       shape: RoundedRectangleBorder(
    //         borderRadius: isHomeScreen == true?
    //         BorderRadius.circular(20) : const BorderRadius.only(
    //           topLeft: Radius.circular(20.0),
    //           topRight: Radius.circular(20.0),
    //           bottomRight: Radius.circular(20.0),
    //           bottomLeft: Radius.circular(20.0),
    //         ),
    //       ),
    //     ),
    //     child: InkWell(
    //       onTap: onTap,
    //       child: Container(
    //         width: isHomeScreen == true ? 117.w : 190.0,
    //         decoration: const BoxDecoration(
    //           border: Border(
    //               top: BorderSide(
    //                   color:K.darkGreen,
    //                   width: 30
    //               ),
    //           ),
    //         ),
    //         child: SingleChildScrollView(
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.end,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               K.sizedBoxH,
    //               SizedBox(
    //                 width: 50.w,
    //                 height: 50.h,
    //                 child: Image.asset(
    //                   '',
    //                   fit: BoxFit.contain,
    //                 ),
    //               ),
    //               K.sizedBoxH,
    //               Text(''),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
