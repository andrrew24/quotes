import 'package:flutter/material.dart';
import 'package:qoutes/core/utils/constants/constants.dart';
import '../../../../core/utils/widgets/custom_button.dart';

class HomeMainButton extends StatefulWidget {
  const HomeMainButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  State<HomeMainButton> createState() => _HomeMainButtonState();
}

class _HomeMainButtonState extends State<HomeMainButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 80,
          width: MediaQuery.sizeOf(context).width,
          child: CustomElevatedButton(
            myChild: const Text(
              "Click Here To View Favorite Quotes",
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            backgroundColor: kMainButtonColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(6),
              topLeft: Radius.circular(6),
            ),
            onPressed: widget.onPressed,
          ),
        ),
        Positioned(
          right: -10,
          top: -15,
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                color: const Color(0xFF323232),
                borderRadius: BorderRadius.circular(16)),
            child: const Center(
                child: Text(
              "4",
              style: TextStyle(color: Colors.white, fontSize: 22),
            )),
          ),
        ),
      ],
    );
  }
}
