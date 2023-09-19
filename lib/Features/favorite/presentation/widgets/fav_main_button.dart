import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:qoutes/core/utils/widgets/custom_button.dart';
import 'package:qoutes/core/utils/constants/constants.dart';
import 'package:qoutes/core/utils/routes/app_router.dart';

class FavoriteMainButton extends StatelessWidget {
  const FavoriteMainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      myChild: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.black,
            ),
            Text(
              "Back To Home Screen",
              style: TextStyle(fontSize: 26, color: Colors.black),
            )
          ],
        ),
      ),
      backgroundColor: kMainButtonColor,
      borderRadius: const BorderRadius.all(Radius.circular(6)),
      onPressed: () =>
          GoRouter.of(context).pushReplacement(AppRouter.kHomeView),
    );
  }
}
