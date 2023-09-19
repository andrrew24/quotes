import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qoutes/Features/home/presentaion/widgets/home_quote_card.dart';
import 'package:qoutes/core/utils/routes/app_router.dart';
import '../../../core/utils/widgets/background.dart';
import 'widgets/home_main_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Background(
          myChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeMainButton(
                  onPressed: () =>
                      GoRouter.of(context).push(AppRouter.kFavoriteView),
                ),
                const SizedBox(
                  height: 10,
                ),
                const HomeQuoteCard(content: "dkasndkjnsajdk", author: "dasdwsasdwasdsa")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
