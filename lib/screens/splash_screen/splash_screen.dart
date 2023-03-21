import 'dart:async';

import 'package:essnad_app/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../const/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen ({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
      Duration (seconds: 5),
        (){
        Navigator.pushReplacement(
            context ,
            MaterialPageRoute(
                builder: (context) => WelcomeScreen()));
        }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Image.asset(
              'assets/images/splash.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width ,
              fit: BoxFit.fill,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Spacer(),
                  const Text(
                    'Esnad | إسناد',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: K.whiteColor,
                    ),
                  ),
                  const Text(
                    'بلدية الشرائع',
                    style: TextStyle(
                      fontSize: 18,
                      color: K.whiteColor,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/images/logo4.png',
                        width: 60.w,
                        height: 60.h,
                      ),
                      Image.asset(
                        'assets/images/whitefirst.png',
                        width: 90.w,
                        height: 90.h,
                      ),
                      Image.asset(
                        'assets/images/logo2.png',
                        width: 70.w,
                        height: 70.h,
                      ),
                      Image.asset(
                        'assets/images/logo3.png',
                        width: 70.w,
                        height: 70.h,
                      ),
                    ],
                  ),
                  K.sizedBoxH,
                  K.sizedBoxH
                ],
              ),
            ),
          ],
        ),
      );
  }
}
