import 'package:essnad_app/screens/home_screen/controller/home_screen_controller.dart';
import 'package:essnad_app/screens/home_screen/home_screen.dart';
import 'package:essnad_app/screens/my_profile_screen/my_profile_screen.dart';
import 'package:essnad_app/screens/services_screen/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../components/second_gradiant_container.dart';
import '../../const/style.dart';

class NavigationBarScreen extends StatelessWidget {
  NavigationBarScreen ({Key? key}) : super(key: key);

  int currentIndex = 1 ;

  List <Widget> screens=[
    MyProfileScreen(),
    HomeScreen(),
    ServicesScreen(),

  ];

  final _controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Obx(() => Center(
        child: screens.elementAt(_controller.selectIndex),
      ),
      ),
      bottomNavigationBar: Obx(() =>
          Container(
            decoration: BoxDecoration(
              gradient: _controller.selectIndex == 0 ?
              const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  K.whiteColor,
                  K.whiteColor
                ],
              ) : const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  K.gradiantFSTColor,
                  K.gradiantSECColor
                ],
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
              ),
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Image.asset(
                        'assets/images/personIcon.png',
                        height: 22,
                        color: _controller.selectIndex == 0
                            ? K.mainColor
                            : K.buttonColor.withOpacity(.5)),
                    label: 'حسابي',
                  ),

                  BottomNavigationBarItem(
                      icon: Image.asset(
                          'assets/images/home.png',
                          height: 25,
                          color: _controller.selectIndex == 1
                              ? K.mainColor
                              : K.buttonColor.withOpacity(.5)),
                      label: 'الرئيسية'
                  ),

                  BottomNavigationBarItem(
                    icon: Image.asset(
                        'assets/images/taskicon.png',
                        height: 25,
                        color: _controller.selectIndex == 2
                            ? K.mainColor
                            : K.buttonColor.withOpacity(.5)),
                    label: 'الخدمات',
                  ),
                ],
                selectedItemColor: K.mainColor,
                unselectedItemColor: K.buttonColor.withOpacity(.5),
                backgroundColor: _controller.selectIndex == 0 ? K.backGroundColor : K.whiteColor,
                type: BottomNavigationBarType.fixed,
                currentIndex: _controller.selectIndex,
                onTap: (index) {
                  _controller.select(index);
                  },
              ),
            ),
          )
      ),
    );
  }
}

