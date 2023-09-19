import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qoutes/core/utils/constants/constants.dart';
import 'package:qoutes/core/utils/widgets/custom_button.dart';

class HomeQuoteCard extends StatelessWidget {
  const HomeQuoteCard({
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
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "“$content”",      
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            author,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            children: [
              CustomElevatedButton(
                  myChild: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Text(
                      "Generate Another Quote",
                      style: TextStyle(fontSize: 20,),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  backgroundColor: kSecondaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(6),
                  ),
                  onPressed: () {}),
              const SizedBox(
                width: 10,
              ),
              CustomElevatedButton(
                  myChild: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      size: 25,
                      color: kSecondaryColor,
                    ),
                  ),
                  backgroundColor: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(6),
                  ),
                  borderSide:
                      const BorderSide(color: kSecondaryColor, width: 2.5),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
