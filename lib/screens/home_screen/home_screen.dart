
import 'package:carousel_slider/carousel_slider.dart';
import 'package:essnad_app/components/customed_services_card.dart';
import 'package:essnad_app/screens/add_violation_screen/add_violation_screen.dart';
import 'package:essnad_app/screens/editting_screen/editting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/second_gradiant_container.dart';
import '../../const/style.dart';
import '../services_screen/controller/carousel_slider_controller.dart';
import '../violation_tracking_screen/violation_tracking_screen.dart';
import '../welcome_screen/welcome_screen.dart';
import 'controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  final homeController = Get.put(HomeScreenController());
  final controller = Get.put(CarouselSliderController());

  HomeScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Stack(
        children:[
          SecGradiantContainer(),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Row(
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
               // K.sizedBoxH,
                K.sizedBoxH,
                Container(
                  width: 350.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                        offset: Offset(7,7), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144__340.png',
                          width: 70.w,
                          height: 70.h,
                        ),
                      ),
                      K.sizedBoxH,
                      const Text(
                        'محمد أحمد',
                        style: TextStyle(
                            color: K.whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'موقع المستخدم',
                            style: TextStyle(
                                color: K.whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: K.whiteColor,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,

                Container(
                  width: 350.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: K.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                        offset: Offset(7,7), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.search_rounded,
                        color: K.grayColor,
                      ),
                      K.sizedBoxW,
                      K.sizedBoxW,
                      const Text(
                        'هل تبحث عن شئ؟',
                        style: TextStyle(
                            color: K.grayColor
                        ),
                      )
                    ],
                  ),
                ),
                //K.sizedBoxH,
                K.sizedBoxH,
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'المخالفات المضافة حديثا',
                        style: TextStyle(
                            color: K.whiteColor,
                            fontSize: 22
                        ),
                      ),
                    ],
                  ),
                ),
                //K.sizedBoxH,
                CarouselSlider.builder(
                  itemCount: homeController.dataList1.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      width: 330.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: K.whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            offset: Offset(7,7), // Shadow position
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              homeController.dataList1[index],
                              style: const TextStyle(
                                color: K.gray1Color,
                              ),
                            ),
                            Text(
                              homeController.dataList2[index],
                            ),
                            K.sizedBoxH,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'مكة المكرمة',
                                  style: TextStyle(
                                      //color: K.whiteColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal
                                  ),
                                ),
                                Icon(
                                  Icons.location_on_outlined,
                                  //color: K.whiteColor,
                                  size: 10,
                                )
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: (){},
                                  child: const Text(
                                    'المزيد من التفاصيل',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      fontSize: 10
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // TextButton(
                            //     onPressed: (){},
                            //     child: const Text(
                            //       'المزيد من التفاصيل',
                            //       style: TextStyle(
                            //         fontSize: 1
                            //       ),
                            //     )
                            // ),
                          ],
                        ),
                      ),

                    );
                  },
                  options: CarouselOptions(
                    autoPlay: false,
                    height: 150.h,
                    viewportFraction: 0.8,
                    //enlargeCenterPage: true,
                    // enlargeStrategy: CenterPageEnlargeStrategy.height,
                    onPageChanged: (index, reason) {
                      print(index);
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'أهم الخدمات',
                        style: TextStyle(
                            color: K.whiteColor,
                            fontSize: 22
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(ViolationTrackingScreen());
                      },
                      child: Container(
                        height:140.h,
                        width: 130.w,
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
                        child: Column(
                          children: [
                            Container(
                              height: 30.h,
                              decoration: const BoxDecoration(
                                color: K.secondColor,
                                // borderRadius: BorderRadius.circular(20),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20) ,
                                  topRight: Radius.circular(20),
                                ),
                              ),
                            ),
                            K.sizedBoxH,
                            Container(
                              width: 50.w,
                              height: 50.h,
                              child: Image.asset(
                                'assets/images/second_icon.png',
                                fit: BoxFit.contain,
                              ),

                            ),
                            K.sizedBoxH,
                            const Text(
                              ' متابعة المخالفات',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            )

                          ],
                        ),
                      ),
                    ),

                    Container(
                      height:140.h,
                      width: 130.w,
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
                      child: Column(
                        children: [
                          Container(
                            height: 30.h,
                            decoration: const BoxDecoration(
                              color:  K.secColorSecButton,
                              // borderRadius: BorderRadius.circular(20),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20) ,
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          K.sizedBoxH,
                          Container(
                            width: 50.w,
                            height: 50.h,
                            child: Image.asset(
                              'assets/images/tarck.png',
                              fit: BoxFit.contain,
                            ),

                          ),
                          K.sizedBoxH,
                          const Text(
                            'رصد المخالفات',
                            style: TextStyle(
                              fontSize: 12
                            ),
                          )

                        ],
                      ),
                    ),


                    InkWell(
                      onTap: (){
                        Get.to(AddViolationScreen());
                      },
                      child: Container(
                        height:140.h,
                        width: 130.w,
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
                        child: Column(
                          children: [
                            Container(
                              height: 30.h,
                              decoration: const BoxDecoration(
                                color: K.mainColor,
                                // borderRadius: BorderRadius.circular(20),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20) ,
                                  topRight: Radius.circular(20),
                                ),
                              ),
                            ),
                            K.sizedBoxH,
                            Container(
                              width: 50.w,
                              height: 50.h,
                              child: Image.asset(
                                'assets/images/addpic.png',
                                fit: BoxFit.contain,
                              ),

                            ),
                            K.sizedBoxH,
                            const Text(
                              'إضافة المخالفات',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),



                // ListView.builder(
                //   itemCount: 3,
                //     itemBuilder: (BuildContext context , int index){
                //       return Container(
                //
                //       );
                //     }
                // ),

              ],
            ),
          ),
        ] ,
      ),
    );
  }
}
