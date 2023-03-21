import 'package:carousel_slider/carousel_slider.dart';
import 'package:essnad_app/screens/editting_screen/editting_screen.dart';
import 'package:essnad_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/customed_container.dart';
import '../../components/second_gradiant_container.dart';
import '../../const/style.dart';
import '../welcome_screen/welcome_screen.dart';

class MyProfileScreen extends StatelessWidget {
  MyProfileScreen ({Key? key}) : super(key: key);

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
                        Get.to(WelcomeScreen());
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
                'حسابي',
                style: TextStyle(
                  color: K.whiteColor,
                  fontSize: 25,
                ),
              ),
              K.sizedBoxH,
              Container(
                  width: double.infinity.w,
                  height: 692.97.h,
                  decoration: const BoxDecoration(
                    color: K.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30) ,
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'محمد أحمد',
                              style: TextStyle(
                                color: K.gray1Color,
                                fontSize: 20
                              ),
                            ),
                            K.sizedBoxW,
                            Image.network(
                              'https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144__340.png',
                              width: 70,
                              height: 70,
                            ),
                          ],
                        ),
                        K.sizedBoxH,
                        K.sizedBoxH,
                        const Center(
                          child: Text(
                            'البيانات الشخصية ',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),

                        K.sizedBoxH,
                        K.sizedBoxH,
                        K.sizedBoxH,
                        K.sizedBoxH,

                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            'الإسم ',
                            style: TextStyle(
                              color: K.gradiantFSTColor,
                              fontSize: 15
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Text(
                              'محمد أحمد'
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0 , left: 10),
                          child: Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),
                        ),

                        K.sizedBoxH,
                        K.sizedBoxH,

                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            'تاريخ الميلاد ',
                            style: TextStyle(
                                color: K.gradiantFSTColor,
                                fontSize: 15
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Text(
                              '19-01-2002'
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0 , left: 10),
                          child: Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),
                        ),

                        K.sizedBoxH,
                        K.sizedBoxH,

                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            'رقم الجوال ',
                            style: TextStyle(
                                color: K.gradiantFSTColor,
                                fontSize: 15
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Text(
                              '0506754332'
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0 , left: 10),
                          child: Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),
                        ),

                        K.sizedBoxH,
                        K.sizedBoxH,

                        const Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            'البريد الإلكتروني ',
                            style: TextStyle(
                                color: K.gradiantFSTColor,
                                fontSize: 15,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Text(
                              'someone34@gmail.com'
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10.0 , left: 10),
                          child: Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),
                        ),






                      ],
                    ),
                  )
              ),

            ],
          ),
        ],
      ),

    );
  }
}
