import 'package:essnad_app/screens/editting_screen/editting_screen.dart';
import 'package:essnad_app/screens/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/second_gradiant_container.dart';
import '../../const/style.dart';
import '../add_violation_screen/add_violation_screen.dart';
import '../home_screen/controller/home_screen_controller.dart';

class ViolationTrackingScreen extends StatelessWidget {
  ViolationTrackingScreen ({Key? key}) : super(key: key);

  final homeController = Get.put(HomeScreenController());


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
                        Get.to(NavigationBarScreen());
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
                'متابعة المخالفات',
                style: TextStyle(
                  color: K.whiteColor,
                  fontSize: 25,
                ),
              ),
              K.sizedBoxH,
              Expanded(
                child: SingleChildScrollView(
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
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/images/second_icon.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        K.sizedBoxH,

                        ...List.generate(homeController.dataList1.length, (index) => Column(
                          children: [
                            Container(
                              width: 380.w,
                              height: 150.h,
                              decoration: BoxDecoration(
                                color: K.whiteColor,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: K.grayColor),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    offset: Offset(5,5), // Shadow position
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      //crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        K.sizedBoxH,
                                        Container(
                                          width: 120.w,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: K.buttonColor,
                                            borderRadius: BorderRadius.circular(10),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 3,
                                                offset: Offset(2,4), // Shadow position
                                              ),
                                            ],
                                          ),
                                          child: TextButton(
                                            onPressed: (){
                                            },
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  'تعديل',
                                                  style: TextStyle(
                                                      color: K.whiteColor,
                                                      fontFamily: 'Cairo',
                                                      fontSize: 10
                                                  ),
                                                ),
                                                Image.asset(
                                                  'assets/images/edit.png',
                                                  width: 15,
                                                  height: 15,

                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        K.sizedBoxH,
                                        K.sizedBoxH,
                                        InkWell(
                                          onTap: (){},
                                          child: const Text(
                                            'المزيد من التفاصيل',
                                            style: TextStyle(
                                                color: K.secondColor,
                                                decoration: TextDecoration.underline,
                                                fontSize: 10,
                                                fontFamily: 'Cairo'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            //'Hind',
                                            homeController.dataList1[index],
                                            style: const TextStyle(
                                                color: K.gray1Color,
                                                fontFamily: 'Cairo'

                                            ),
                                          ),
                                           Text(
                                            homeController.dataList2[index],
                                            //'hi',
                                            style: const TextStyle(
                                                fontFamily: 'Cairo',
                                              fontSize: 12

                                            ),

                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'مكة المكرمة',
                                                style: TextStyle(
                                                  //color: K.whiteColor,
                                                    fontSize: 10,
                                                    //fontWeight: FontWeight.normal,
                                                    fontFamily: 'Cairo'
                                                ),
                                              ),
                                              Icon(
                                                Icons.location_on_outlined,
                                                //color: K.whiteColor,
                                                size: 15,
                                              )
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            K.sizedBoxH,
                          ],
                        ),
                        ),

                      ],
                    ),
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
