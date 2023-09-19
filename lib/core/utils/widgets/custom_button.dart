import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.myChild,
    required this.backgroundColor,
    required this.borderRadius,
    required this.onPressed,
    this.borderSide,
  });

  final Widget myChild;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final BorderSide? borderSide;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            side: MaterialStateProperty.all(borderSide),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: borderRadius))),
        onPressed: onPressed,
        child: myChild);
  }
}
