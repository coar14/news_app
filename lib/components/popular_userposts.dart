import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/articles/articles.dart';
import 'package:news_app/components/text_themes.dart';

class PopularPosts extends StatelessWidget {
  const PopularPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 200,
        itemCount: Popular().posts.length,
        itemBuilder: (context, index) {
          final popularIndex = Popular().posts;
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(popularIndex[index]))),
            ),
          );
        },
      ),
    );
  }
}

class VerticalDisplay extends StatelessWidget {
  const VerticalDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final uploads = DisplayPosts();
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: uploads.listPost.length,
        itemBuilder: (context, index) {
          final postIndex = uploads.listPost[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: SizedBox(
              height: 100,
              child: Row(children: [
                Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.white),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(postIndex[0])))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PostText1(text: postIndex[1]),
                    PostText2(text: postIndex[2]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/calendar_icon.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              PostText1(text: postIndex[3])
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/time_icon.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              PostText1(text: postIndex[4]),
                            ],
                          )
                        ])
                  ],
                )),
              ]),
            ),
          );
        },
      ),
    );
  }
}
