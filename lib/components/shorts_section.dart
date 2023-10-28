import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/articles/shorts.dart';
import 'package:news_app/const_style.dart';

class ShortSection extends StatelessWidget {
  const ShortSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short for You',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Text(
                'View all',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  color: aBlue,
                  fontSize: 12,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 88,
            child: ListView.builder(
              itemCount: shortForYou.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.normal),
              itemBuilder: (context, index) {
                ShortForYou shortItem = shortForYou[index];

                return Container(
                  padding: const EdgeInsets.all(9),
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  width: 208,
                  height: 88,
                  decoration: BoxDecoration(
                    color: aWhite,
                    borderRadius: BorderRadius.circular(borderRad),
                    boxShadow: [
                      BoxShadow(
                        color: aDarkBlue.withOpacity(0.08),
                        offset: const Offset(0.0, 3.0),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(26),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(borderRad),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(shortItem.photo)),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/play_icon.svg',
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              shortItem.heading,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/eye_icon.svg',
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  shortItem.views,
                                  style: const TextStyle(
                                    fontFamily: 'Gellix',
                                    color: aGray,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
