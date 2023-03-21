import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:essnad_app/components/customed_gradiant_container.dart';
import 'package:essnad_app/screens/violation_tracking_screen/violation_tracking_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/customed_services_card.dart';
import '../../components/second_gradiant_container.dart';
import '../../const/style.dart';
import '../add_violation_screen/add_violation_screen.dart';
import '../editting_screen/editting_screen.dart';
import '../home_screen/controller/home_screen_controller.dart';
import '../welcome_screen/welcome_screen.dart';
import 'controller/carousel_slider_controller.dart';

class ServicesScreen extends StatelessWidget {

  final controller = Get.put(CarouselSliderController());
  final homeController = Get.put(HomeScreenController());

  ServicesScreen ({Key? key}) : super(key: key);

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
                  //K.sizedBoxH,
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
                          'الخدمات',
                          style: TextStyle(
                            color: K.whiteColor,
                            fontSize: 22
                          ),
                        ),
                      ],
                    ),
                  ),
                  K.sizedBoxH,
                  CarouselSlider.builder(
                    itemCount: controller.images.length,
                    itemBuilder: (context, index, realIndex) {
                      return CustomeServicesCard(
                          controller: controller,
                          image: controller.images[index],
                          text:controller.listData[index],
                          onTap: () {
                            if (index == 0) {
                              Get.to(AddViolationScreen());
                            } else if (index==3){
                              Get.to(ViolationTrackingScreen());
                            }
                            // else if (index == 1) {
                            //   Get.to(PerformanceScreen());
                            // } else if (index == 2) {
                            //   Get.to(AddNewsScreen());
                            // } else if (index == 3) {
                            //   Get.to(TasksScreen(addressName:'المعالجه'));
                            // }else if (index == 4) {
                            //   // Get.to(AddNewsScreen());
                            //   Get.to(TasksScreen(addressName:'المهام'));
                            //
                            // }
                          },
                          color: controller.colorsList[index],
                          isHomeScreen: false,
                        );
                    },
                    options: CarouselOptions(
                      autoPlay: false,
                      height: 200.0,
                      viewportFraction: 0.30,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      onPageChanged: (index, reason) {
                        print(index);
                        controller.currentIndex.value = index;
                      },
                    ),
                  ),

                ],
              ),
            ),
          ] ,
      ),
    );
  }
}
