import 'package:essnad_app/components/customed_container.dart';
import 'package:essnad_app/components/customed_gradiant_container.dart';
import 'package:essnad_app/screens/create_account_screen/create_account_screen.dart';
import 'package:essnad_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../components/customed_text_field.dart';
import '../../const/style.dart';
import '../navigation_bar/navigation_bar.dart';
import '../welcome_screen/welcome_screen.dart';
import 'controller/sign_in_screen_controller.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen ({Key? key}) : super(key: key);

  final controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
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
                    K.sizedBoxW,
                    K.sizedBoxW,
                    const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        color: K.whiteColor,
                        fontSize: 25,
                      ),
                    ),

                    K.sizedBoxW,
                    K.sizedBoxW,
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
              //Spacer(),
              K.sizedBoxH,
              K.sizedBoxH,
              K.sizedBoxH,
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
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 110.w,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: K.smallContainerColor,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'العربية',
                                    style: TextStyle(
                                      color: K.blackTypingColor,
                                    ),
                                  ),
                                  Icon(
                                    Icons.language_rounded,
                                    color: K.blackTypingColor,
                                  ),
                                ],
                              ),
                            ),
                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,


                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  'اسم المستخدم',
                                  style: TextStyle(
                                      color: K.mainColor,
                                      fontSize: 14
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/images/personIcon.png',
                                  width: 16.w,
                                  height: 18.h,
                                ),
                              ],
                            ),
                            CustomTextField(),

                            K.sizedBoxH,
                            K.sizedBoxH,
                            K.sizedBoxH,


                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  'كلمة المرور',
                                  style: TextStyle(
                                      color: K.mainColor,
                                      fontSize: 14
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  'assets/images/lockicon.png',
                                  width: 16.w,
                                  height: 18.h,
                                ),
                              ],
                            ),
                            const CustomTextField(
                              obSecure :true,
                            ),




                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: (){
                                  },
                                  child: const Text(
                                    'نسيت كلمة المرور؟',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 12,
                                      decoration: TextDecoration.underline,

                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Spacer(),

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
                                    'دخول',
                                    style: TextStyle(
                                        color: K.whiteColor,
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            K.sizedBoxH,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: (){
                                    Get.to(CreateAccountScreen());
                                  },
                                  child: const Text(
                                    'سجل الان',
                                    style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: 12,
                                      decoration: TextDecoration.underline,

                                    ),
                                  ),
                                ),


                                const Text(
                                  'ليس لديك حساب؟ ',
                                  style: TextStyle(
                                      color: K.grayColor
                                  ),
                                ),

                              ],
                            )



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

    );
  }
}
