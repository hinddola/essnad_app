import 'package:email_auth/email_auth.dart';
import 'package:essnad_app/screens/splash_screen/splash_screen.dart';
import 'package:essnad_app/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
 //final services=AuthServices();

  final _email = ''.obs;
  final _password = ''.obs;
  final check = false.obs;
  EmailAuth  emailAuth=EmailAuth(
    sessionName: "Send OTP email",
  );

  String get email => _email.value;

  String get password => _password.value;

  validEmail(String email) {
    _email.value = email;
  }

  validPassword(String password) {
    _password.value = password;
  }
  @override
  void initState() {
    // emailAuth  ;
    // emailAuth.config(  remoteServerConfiguration);
  }
  var remoteServerConfiguration =
  {"server" : "https://esnad.ibtikar-soft.com/",
    "serverKey" : "UDujOQ"
  };
  log() async {
   // services.login(email.trim(), password.trim());
  }



  void sendOTP()async{
    bool resultOfSendOtp=await emailAuth.sendOtp(
      otpLength: 5,
        recipientMail: email ,);
    if(resultOfSendOtp){
      emailAuth.sessionName;
       return print('otp send ${resultOfSendOtp}');

    }
  }
  void validateOtp()async{
    var res =await emailAuth.validateOtp(
         userOtp: otp.value,
      recipientMail: email.trim(),);
    if(res==true){
      return print('otp verified');
    } else{
      return print('otp  not verified');
       }
  }





  final TextEditingController fieldOne = TextEditingController();
  final TextEditingController fieldTwo = TextEditingController();
  final TextEditingController fieldThree = TextEditingController();
  final TextEditingController fieldFour = TextEditingController();
  final otp=''.obs;
  final wrongNum=false.obs;
// final notEmpty=false.obs;

  isNotEmpty( ){
    if (fieldOne.text.isNotEmpty&&fieldTwo.text.isNotEmpty &&fieldFour.text.isNotEmpty &&fieldThree.text.isNotEmpty){
       Get.to(WelcomeScreen());
    } else{
      wrongNum.value=true;
      print('error');
      Get.to(SplashScreen());
    }
    update();
  }
}
