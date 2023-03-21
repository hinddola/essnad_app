import 'package:essnad_app/components/customed_button.dart';
import 'package:essnad_app/components/customed_container.dart';
import 'package:essnad_app/screens/services_screen/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:otp_text_field/otp_field.dart';

import '../../components/custome_otp_input.dart';
import '../../components/customed_gradiant_container.dart';
import '../../components/login_custom_text.dart';
import '../../const/style.dart';
import '../navigation_bar/navigation_bar.dart';
import '../sign_in_screen/controller/sign_in_screen_controller.dart';
import '../welcome_screen/welcome_screen.dart';

class AccountDetectionScreen extends StatelessWidget {
  AccountDetectionScreen ({Key? key}) : super(key: key);

  final controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
          children: [
            CustomeGradiantContainer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:60.0,left: 80.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      K.sizedBoxW,
                      const Text(
                        'التحقق من الحساب ',
                        style: TextStyle(
                          color: K.whiteColor,
                          fontSize: 25,
                        ),
                      ),

                      const Spacer(),
                      IconButton(
                        onPressed: (){
                          Get.to(WelcomeScreen());
                        } ,
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: K.whiteColor,
                          size: 30,
                        ),
                      ),
                    ],
                  ),

                ),
                K.sizedBoxH,
                K.sizedBoxH,
                K.sizedBoxH,
                //Spacer(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                        width: double.infinity.w,
                        height: 750.h,
                        decoration: const BoxDecoration(
                          color: K.whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30) ,
                            topRight: Radius.circular(30),
                          ),
                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [

                            const Text(
                              'ادخل الرقم المرسل لهاتفك' ,
                              style: TextStyle(
                                color: K.gray2Color
                              ),
                            ),
                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: [
                                OtpInput(controller.fieldOne,  true, 63.h, 64.w,),
                                OtpInput(controller.fieldTwo, false, 63.h, 64.w,),
                                OtpInput(controller.fieldThree, false, 63.h, 64.w,),
                                OtpInput(controller.fieldFour, false, 63.h, 64.w,)
                              ],
                            ),
                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,

                            // const Text(
                            //   'تهانينا! حسابك اصبح جاهز' ,
                            //   style: TextStyle(
                            //       color: K.textColor,
                            //   ),
                            // ),


                            // Text(
                            //   controller.otp.value.isEmpty? 'الرجاء ادخال رمز التأكيد':
                            // (controller.otp.value.length!=4 )?'الرقم المدخل غير صحيح':
                            // '  الرمز هو  ${ controller.otp.value}  ' ,
                            //   style:TextStyle(
                            //       color: controller.otp.value.isEmpty? K.blackTypingColor:
                            //   controller.otp.value.length!=4 ?Colors.red:
                            //   Colors.black,
                            //       fontSize: controller.otp.value.length!=3?16.sp:22.sp
                            //   ),
                            // ),




                            // Text(
                            //   'اعاده ارسال الكود',
                            //   style: TextStyle(
                            //       color: K.textColor,
                            //       fontSize: 16.sp,
                            //       height: 2
                            //   ),
                            // ),



                            K.sizedBoxH,
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
                                    'التالي',
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
                  ),
                ),

              ],
            ),
          ],
      ),
    );
  }

}
