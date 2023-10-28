import 'package:flutter/material.dart';
import 'package:news_app/articles/tags.dart';
import 'package:news_app/const_style.dart';

class TagLists extends StatelessWidget {
  TagLists({super.key});
  final tags = TagsList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 20,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tags.tagsList.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  tags.tagsList[index],
                  style: const TextStyle(
                    color: aLightGray,
                    fontSize: 12,
                    fontFamily: 'Gellix',
                  ),
                ));
          },
        ),
      ),
    );
  }
}
