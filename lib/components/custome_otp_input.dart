import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../const/style.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final double height;
  final double width;
  final bool autoFocus;

  const OtpInput(
      this.controller,
      this.autoFocus,
      this.height,
      this.width ,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor:K.mainColor,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration:  InputDecoration(
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide:   BorderSide(
                  color: K.mainColor.withOpacity(.2),
                  width: 1.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide:  BorderSide(
                  color:K.darkGreen
              ),
            ),
            counterText: '',
            hintStyle: const TextStyle(
                color: K.mainColor,
                fontSize: 20.0),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}