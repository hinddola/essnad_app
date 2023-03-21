
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class AddViolationController extends GetxController{

  File? image;

  pickImage() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    image = File(pickedImage!.path);
    update();
  }

}