import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeScreenController extends GetxController {
  final _selectIndex = 1.obs;

  final boardController = PageController();
  final CarouselController controller = CarouselController();
  final currentIndex = 0.obs;

  int get selectIndex => _selectIndex.value;

  select(int index) {
    _selectIndex.value = index;
  }


  List dataList1 = [
    'التشوه البصري',
    'مراقبة البناء',
    'الظواهر السلبية',
    'مراقبة المواد الغذائية',
  ];

  List dataList2 = [
    ' الكتابة على الجدران',
    'رمي مخلفات البناء',
    'معالجة اللوحات التجارية',
    'مخالفة اشتراطات الصحة',
  ];


}