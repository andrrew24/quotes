import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/constants/constants.dart';
import '../../../../core/utils/widgets/custom_button.dart';

class FavQuoteCard extends StatelessWidget {
  const FavQuoteCard({
    super.key,
    required this.content,
    required this.author,
  });

  final String content;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(6),
            topLeft: Radius.circular(6),
            topRight: Radius.circular(6),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "“$content”",
            style: const TextStyle(fontSize: 26),
          ),
          Text(
            author,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            children: [
              CustomElevatedButton(
                myChild: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.heart,
                            color: kSecondaryColor,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Remove From Favorite",
                            style:
                                TextStyle(color: kSecondaryColor, fontSize: 22),
                          )
                        ],
                      ),
                    )),
                backgroundColor: Colors.white,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6)),
                onPressed: () {},
                borderSide: const BorderSide(width: 3, color: kSecondaryColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
