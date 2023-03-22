import 'package:essnad_app/screens/add_violation_screen/add_violation_screen.dart';
import 'package:essnad_app/screens/editting_screen/editting_screen.dart';
import 'package:essnad_app/screens/home_screen/home_screen.dart';
import 'package:essnad_app/screens/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/second_gradiant_container.dart';
import '../../const/style.dart';
import '../welcome_screen/welcome_screen.dart';

class SuccessViolationAddingScreen extends StatelessWidget {
  SuccessViolationAddingScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          SecGradiantContainer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){
                        Get.to(EdittingScreen());
                      } ,
                      icon: const Icon(
                        Icons.settings_outlined,
                        color: K.whiteColor,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: (){
                        Get.to(AddViolationScreen());
                      } ,
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: K.whiteColor,
                        size: 25,
                      ),
                    ),

                  ],
                ),
              ),
              const Text(
                'إضافة مخالفة',
                style: TextStyle(
                  color: K.whiteColor,
                  fontSize: 25,
                ),
              ),
              K.sizedBoxH,
              Expanded(
                child: Container(
                    width: double.infinity.w,
                    //height: 692.97.h,
                    decoration: const BoxDecoration(
                      color: K.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30) ,
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,top: 40.0),
                          child: Image.network(
                            'https://www.kindpng.com/picc/m/628-6282179_nationallink-check-mark-icon-application-success-hd-png.png',
                            height: 250,
                            width: 250,
                          ),
                        ),
                        const Text(
                          'تمت إضافة المخالفة بنجاح',
                          style: TextStyle(
                            fontSize: 20,
                            color: K.textColor,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Cairo'
                          ),
                        ),

                        K.sizedBoxH,
                        K.sizedBoxH,
                        K.sizedBoxH,
                        K.sizedBoxH,
                        K.sizedBoxH,

                        Center(
                          child: Container(
                            width: 350.w,
                            decoration: BoxDecoration(
                              color: K.buttonColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  offset: Offset(0,4), // Shadow position
                                ),
                              ],
                            ),
                            child: TextButton(
                              onPressed: (){
                                Get.to(NavigationBarScreen());

                              },
                              child: const Text(
                                'العودة للصفحة الرئيسية',
                                style: TextStyle(
                                    color: K.whiteColor,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                ),
              ),

            ],
          ),
        ],
      ),
      //bottomNavigationBar: NavigationBarScreen(),

    );
  }
}
