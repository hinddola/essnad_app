import 'package:flutter/material.dart';

import '../const/style.dart';

class SecGradiantContainer extends StatelessWidget {
  SecGradiantContainer ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: [
        K.gradiantFSTColor,
        K.gradiantSECColor
      ],
    ),
    ),
    );
  }
}
