import 'package:essnad_app/screens/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/second_gradiant_container.dart';
import '../../const/style.dart';
import '../welcome_screen/welcome_screen.dart';

class EdittingScreen extends StatelessWidget {
  EdittingScreen ({Key? key}) : super(key: key);

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
                'الإعدادات',
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
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Center(
                            child: Text(
                              'إعدادات الحساب',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          K.sizedBoxH,
                          K.sizedBoxH,


                          // ListView.builder(
                          //   itemCount: 3,
                          //     itemBuilder: (BuildContext context , index){
                          //       return Column(
                          //         children: [
                          //           Row(
                          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //             children: const [
                          //               Icon(
                          //                 Icons.keyboard_arrow_down,
                          //                 color: K.gradiantFSTColor,
                          //               ),
                          //               Text(
                          //                 'اللغة',
                          //                 style: TextStyle(
                          //                     color: K.gradiantFSTColor,
                          //                     fontSize: 20
                          //                 ),
                          //               )
                          //             ],
                          //           ),
                          //           const Divider(
                          //             color: K.searchColor,
                          //             height: 8.0,
                          //           ),
                          //         ],
                          //       );
                          //     }
                          // ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: K.gradiantFSTColor,
                              ),
                              Text(
                                'اللغة',
                                style: TextStyle(
                                    color: K.gradiantFSTColor,
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),

                          K.sizedBoxH,
                          K.sizedBoxH,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: K.gradiantFSTColor,
                              ),
                              Text(
                                'تحديث رقم الجوال',
                                style: TextStyle(
                                    color: K.gradiantFSTColor,
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),

                          K.sizedBoxH,
                          K.sizedBoxH,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: K.gradiantFSTColor,
                              ),
                              Text(
                                'تغيير كلمة المرور',
                                style: TextStyle(
                                    color: K.gradiantFSTColor,
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),


                          K.sizedBoxH,
                          K.sizedBoxH,
                          K.sizedBoxH,

                          const Center(
                            child: Text(
                              'الدعم',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          K.sizedBoxH,
                          K.sizedBoxH,


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: K.gradiantFSTColor,
                              ),
                              Text(
                                'الدعم الفني',
                                style: TextStyle(
                                    color: K.gradiantFSTColor,
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),

                          K.sizedBoxH,
                          K.sizedBoxH,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: K.gradiantFSTColor,
                              ),
                              Text(
                                'اتصل بنا',
                                style: TextStyle(
                                    color: K.gradiantFSTColor,
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),

                          K.sizedBoxH,
                          K.sizedBoxH,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: K.gradiantFSTColor,
                              ),
                              Text(
                                ' اللوائح والأنظمة',
                                style: TextStyle(
                                    color: K.gradiantFSTColor,
                                    fontSize: 20
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            color: K.searchColor,
                            height: 8.0,
                          ),


                        ],
                      ),
                    )
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
