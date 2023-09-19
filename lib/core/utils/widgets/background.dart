import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.myChild,
  });

  final Widget myChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kGradiantStartColor, kGradiantEndColor])),
      child: myChild,
    );
  }
}
