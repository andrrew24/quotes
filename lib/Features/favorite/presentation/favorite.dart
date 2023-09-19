import 'package:flutter/material.dart';

import 'package:qoutes/Features/favorite/presentation/widgets/fav_main_button.dart';
import 'package:qoutes/Features/favorite/presentation/widgets/fav_quote_card.dart';
import 'package:qoutes/Features/favorite/presentation/widgets/text_field.dart';
import 'package:qoutes/core/utils/widgets/background.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  final TextEditingController controller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          myChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            const FavoriteMainButton(),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: "Type Something Here To Search..",
              maxlines: 1,
              onChanged: (p0) {},
              onSaved: (p0) {},
            ),
            const SizedBox(
              height: 10,
            ),
            const FavQuoteCard(content: "content", author: "author")
          ],
        ),
      )),
    );
  }
}
