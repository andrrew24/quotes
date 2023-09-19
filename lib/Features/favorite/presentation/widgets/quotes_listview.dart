import 'package:flutter/material.dart';
import 'package:qoutes/Features/favorite/presentation/widgets/fav_quote_card.dart';

class FavQuotesListView extends StatelessWidget {
  const FavQuotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const FavQuoteCard(content: "content", author: "author");
  }
}
