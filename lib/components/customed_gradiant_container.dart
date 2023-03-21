import 'package:flutter/material.dart';

import '../const/style.dart';

class CustomeGradiantContainer extends StatelessWidget {

  CustomeGradiantContainer ({
    Key? key ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
               K.topLeftGradiantColor,
               K.topRightGradiantColor
            ],
    ),
  ),
    );
  }
}
