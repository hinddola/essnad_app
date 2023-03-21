import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CreateAccountController extends GetxController {
  //final services=AuthServices();

  final value = false.obs;
  final _email=''.obs;
  final _name=''.obs;
  final _password=''.obs;
  final _mobile=''.obs;

  String get email=>_email.value;
  String get name=>_name.value;
  String get password=>_password.value;
  String get mobile=>_mobile.value;

  checkBoxFun(bool v) {
    value.value = v;
  }
  validEmail(String email) {
    _email.value = email;
  }validPass(String password) {
    _password.value = password;
  }
  validName(String name) {
    _name.value = name;
  }validmobile(String mobile) {
    _mobile.value = mobile;
  }
  register() async {
    //services.register(email.trim(), password.trim(),name.trim(),mobile.trim());
  }
  validateForm( ) {
    try {
      if (name.length < 3) {
        Fluttertoast.showToast(
            msg: "Name must be atleast 3 Characters",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 12.0);
      }
      else if (!email.contains('@')) {
        Fluttertoast.showToast(
            msg: "Email address is not valid",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 12.0);
      }
      else if (mobile.isEmpty   ) {
        Fluttertoast.showToast(
            msg: "Phone Number is mandatory",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 12.0);
      }
      else if (password.isEmpty) {
        Fluttertoast.showToast(
            msg: "Password must be atleast 6 Characters",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 12.0);}
      else if(value.value!=true){
        Get.snackbar('Error', 'you should accept the terms and conditions ',
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 2),colorText: Colors.red);
      }
      else {
        Fluttertoast.showToast(msg: 'yor email has been created');
        register();
      }
    } catch (on) {
      printError(info: 'error');
    }
  }

  logout(){
    //services.signOut();
  }
}
