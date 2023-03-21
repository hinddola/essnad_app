import 'package:essnad_app/components/customed_button.dart';
import 'package:essnad_app/components/customed_container.dart';
import 'package:essnad_app/screens/account_detecion_screen/account_detection_screen.dart';
import 'package:essnad_app/screens/add_violation_screen/add_violation_screen.dart';
import 'package:essnad_app/screens/create_account_screen/create_account_screen.dart';
import 'package:essnad_app/screens/editting_screen/editting_screen.dart';
import 'package:essnad_app/screens/home_screen/home_screen.dart';
import 'package:essnad_app/screens/my_profile_screen/my_profile_screen.dart';
import 'package:essnad_app/screens/navigation_bar/navigation_bar.dart';
import 'package:essnad_app/screens/services_screen/services_screen.dart';
import 'package:essnad_app/screens/sign_in_screen/sign_in_screen.dart';
import 'package:essnad_app/screens/splash_screen/splash_screen.dart';
import 'package:essnad_app/screens/success_violation_adding_screen/success_violation_adding_screen.dart';
import 'package:essnad_app/screens/violation_tracking_screen/violation_tracking_screen.dart';
import 'package:essnad_app/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'const/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data:  MediaQueryData(),
        child: ScreenUtilInit(
      designSize: const Size(450, 926),
          builder: (BuildContext ,Widget) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'HacenTunisia',
            textTheme: const TextTheme(
              headline1:
              TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
              button: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  fontFamily: 'Arial',
                  letterSpacing: 1.25),
            ),
            appBarTheme: const AppBarTheme(backgroundColor: K.backGroundColor),
            //scaffoldBackgroundColor: Colors.transparent,
            unselectedWidgetColor: K.checkButtonCollor,
          ),
          home: SignInScreen(),
        ),
      ),
    );
  }
}