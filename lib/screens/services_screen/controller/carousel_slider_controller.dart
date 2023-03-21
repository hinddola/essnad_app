import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../const/style.dart';

class CarouselSliderController extends GetxController{

  final boardController = PageController();
  final CarouselController controller = CarouselController();
  final currentIndex = 0.obs;

  List images =[
    'assets/images/addpic.png',
    'assets/images/tarck.png',
    'assets/images/mat.png',
    'assets/images/second_icon.png',
  ];

  List listData=
  [
    'إضافة المخالفات', // زي اضافه مخالفه اللي في الux
    'رصد المخالفات',
    'الإحصائيات ',
    ' متابعة المخالفات',
    // Get.to(TasksTypesScreen());

  ];

  List colorsList=
  [
    K.mainColor,
    K.secColorSecButton,
    K.secondColor,
    K.fourthColor,
  ];








}