import 'package:essnad_app/screens/create_account_screen/create_account_screen.dart';
import 'package:essnad_app/screens/sign_in_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../const/style.dart';
import 'controller/welcome_screen_controller.dart';

class WelcomeScreen extends StatelessWidget {

  final controller = Get.put(WelcomScreenController());

  WelcomeScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Stack(
        children: [
          Image.asset(
            'assets/images/Al-Riyad.png',
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            // fit: BoxFit.fill,
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    'مرحبا بك',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: K.whiteColor,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: double.infinity.w,
                height: 450.h,
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
                      padding: const EdgeInsets.only(top: 50),
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
                            Get.to(SignInScreen());
                          },
                          child: const Text(
                            'تسجيل الدخول',
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
                    K.sizedBoxH,
                    K.sizedBoxH,
                    const Text(
                      'المتابعة كضيف',
                      style: TextStyle(
                        color: K.textColor,
                      ),
                    ),

                    K.sizedBoxH,
                    K.sizedBoxH,
                    K.sizedBoxH,
                    K.sizedBoxH,

                    // const Divider(
                    //   color: K.darkGreen,
                    // ),
                    // const Text(
                    //   '----------------------       أو       -----------------------' ,
                    //   style: TextStyle(
                    //       color: K.grayColor,
                    //       fontSize: 15
                    //   ),
                    // ),

                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 8.0,
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          '  أو  ',
                          style: TextStyle(color: K.grayColor, fontSize: 20.sp),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 8.0,
                          ),
                        ),
                      ],
                    ),


                    K.sizedBoxH,
                    K.sizedBoxH,
                    K.sizedBoxH,
                    K.sizedBoxH,

                    Container(
                      width: 350.w,
                      decoration: BoxDecoration(
                          color: K.whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: K.textColor
                        ),
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
                          Get.to(CreateAccountScreen());
                        },
                        child: const Text(
                          'إنشاء حساب جديد',
                          style: TextStyle(
                              color: K.textColor,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
