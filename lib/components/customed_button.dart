import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/style.dart';

class CustomedButton extends StatelessWidget {

  double ?width= 300.w;

  CustomedButton ({
    Key? key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
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
        },
        child: const Text(
          '',
          style: TextStyle(
              color: K.whiteColor,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
