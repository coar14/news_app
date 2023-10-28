import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/articles/articles.dart';
import 'package:news_app/const_style.dart';

class HorizontalListArticle extends StatelessWidget {
  const HorizontalListArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 304,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: highlightArticle.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final article = highlightArticle[index];
          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(right: 20),
            height: 304,
            width: 255,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRad),
              color: aWhite,
              boxShadow: [
                BoxShadow(
                  color: aDarkBlue.withOpacity(0.052),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 25,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 164,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRad),
                    image: DecorationImage(
                      image: AssetImage(article.articlePicture),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Flexible(
                  child: Text(
                    article.articleTitle,
                    style: const TextStyle(
                      fontFamily: 'Gellix',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 19,
                          backgroundImage: AssetImage(article.articleUserPic),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              article.articleUsername,
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              article.articleDate,
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'Gellix',
                                color: aGray,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(borderRad),
                        color: aLightWhite,
                      ),
                      child: SvgPicture.asset(article.articleShare),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
