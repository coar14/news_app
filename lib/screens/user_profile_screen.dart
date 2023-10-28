import 'package:flutter/material.dart';
import 'package:news_app/components/popular_userposts.dart';
import 'package:news_app/const_style.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRad),
                color: Colors.transparent),
            child: Padding(
              padding: EdgeInsets.zero,
              child: Row(children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/pic/dp4.jpg')),
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(borderRad)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cor Mas',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Gellix',
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Jack of all Trades',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gellix',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: aLightBlue),
                    child: const Text(
                      'Following',
                      style: TextStyle(
                        color: aWhite,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Gellix',
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Tech enthusiast and content creator. 🚀 | Turning ideas into digital magic 💻 | Exploring the world one pixel at a time 📸 | Let's connect! 👋 #TechWizard #ContentCreator",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: aGray, fontFamily: 'Gellix', height: 1.2, fontSize: 12),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFF19202D)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '54.21k',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w800,
                            color: aWhite,
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w500,
                            color: aWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Color(0xFFC1D4F9),
                    width: 5,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '2.11K',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w800,
                            color: aWhite,
                          ),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w500,
                            color: aWhite,
                          ),
                        )
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Color(0xFFC1D4F9),
                    width: 5,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w800,
                            color: aWhite,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w500,
                            color: aWhite,
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Cor\'s Post',
                style: TextStyle(
                  color: aDarkBlue,
                  fontFamily: 'Gellix',
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: aBlue,
                  fontFamily: 'Gellix',
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const VerticalDisplay(),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Popular From Cor',
                style: TextStyle(
                  color: aDarkBlue,
                  fontFamily: 'Gellix',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const PopularPosts(),
        ]),
      ),
    );
  }
}
