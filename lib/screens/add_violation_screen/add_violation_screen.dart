import 'package:essnad_app/screens/editting_screen/editting_screen.dart';
import 'package:essnad_app/screens/home_screen/home_screen.dart';
import 'package:essnad_app/screens/my_profile_screen/my_profile_screen.dart';
import 'package:essnad_app/screens/success_violation_adding_screen/success_violation_adding_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../components/second_gradiant_container.dart';
import '../../const/style.dart';
import '../navigation_bar/navigation_bar.dart';
import '../welcome_screen/welcome_screen.dart';
import 'controller/add_violation_controller.dart';
import 'controller/map_controller.dart';

class AddViolationScreen extends StatelessWidget {
  AddViolationScreen ({Key? key}) : super(key: key);

  final controller = Get.put(AddViolationController());
  final mapController = Get.put(MapController());

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
                'إضافة مخالفة',
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
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                             Center(
                              child: Image.asset(
                                'assets/images/addpic.png',
                                width: 60,
                                height: 60,
                              )
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
                                  'تصنيف المخالفة',
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
                                  'نوع المخالفة',
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
                                  'درجة المخالفة',
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
                                'إضافة الصور',
                                style: TextStyle(
                                    color: K.gradiantFSTColor,
                                    fontSize: 18
                                ),
                              ),
                            ),

                            K.sizedBoxH,
                            Center(
                              child: InkWell(
                                onTap: (){
                                  controller.pickImage();
                                },
                                child: Container(
                                  width: 350.w,
                                  height: 150.h,
                                  decoration: BoxDecoration(
                                    color: K.whiteColor,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color : K.grayColor),
                                  ),
                                  child: controller.image == null ?
                                  const Icon(
                                    Icons.add_a_photo_outlined ,
                                    size: 40,
                                    color: K.grayColor,
                                  ) : Image.file(controller.image!),
                                ),
                              )

                              ),

                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,

                            const Center(
                              child: Text(
                                'إضافة الموقع',
                                style: TextStyle(
                                    color: K.gradiantFSTColor,
                                    fontSize: 18
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(5.sp),
                              //decoration:K.boxDecoration,
                              width: double.infinity,
                              height: 500.h,
                              child: GoogleMap(
                                gestureRecognizers: Set()
                                  ..add(Factory<PanGestureRecognizer>(
                                          () => PanGestureRecognizer()))
                                  ..add(Factory<ScaleGestureRecognizer>(
                                          () => ScaleGestureRecognizer()))
                                  ..add(Factory<TapGestureRecognizer>(
                                          () => TapGestureRecognizer()))
                                  ..add(Factory<
                                      VerticalDragGestureRecognizer>(
                                          () =>
                                          VerticalDragGestureRecognizer())),
                                mapType: MapType.normal,
                                zoomControlsEnabled: true,
                                myLocationEnabled: true,
                                myLocationButtonEnabled: true,
                                zoomGesturesEnabled: true,
                                mapToolbarEnabled: true,
                                initialCameraPosition: const CameraPosition(
                                    target: LatLng(37.43296265331129, -122.08832357078792),
                                    zoom: 15),
                                onMapCreated: (GoogleMapController
                                gcontroller) async {
                                  //
                                },
                                onTap: (LatLng loc) {
                                  print(
                                      '${loc.latitude}, ${loc.longitude}');
                                  mapController.currentLocation.latitude!=loc.latitude;
                                  mapController.currentLocation.longitude!=loc.longitude;

                                },
                              ),
                            ),
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
                                    Get.to(SuccessViolationAddingScreen());
                                  },
                                  child: const Text(
                                    'إضافة',
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
                      )
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
