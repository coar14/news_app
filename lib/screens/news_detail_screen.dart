import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/const_style.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: aLightWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  const FullScreenSlider(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: aLighterWhite,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: padHorizontal,
                        vertical: 60,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                borderRad,
                              ),
                              border: Border.all(
                                color: aWhite,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/icons/arrow_back_icon.svg',
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                borderRad,
                              ),
                              border: Border.all(
                                color: aWhite,
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/icons/bookmark_white_icon.svg',
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: padHorizontal,
              ),
              transform: Matrix4.translationValues(0, -14, 0),
              child: const Text(
                'Expedition into the Unknown: A Thrilling Adventure Ahead!',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  color: aDarkBlue,
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: padHorizontal,
                vertical: 16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal! * 2.5,
              ),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  borderRad,
                ),
                border: Border.all(
                  color: aBorder,
                ),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 13,
                    backgroundColor: aBlue,
                    backgroundImage: AssetImage(
                      'assets/pic/dp4.jpg',
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 2.5,
                  ),
                  Text(
                    'Piertz Sekld • 8 min read',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      color: aGray,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: padHorizontal,
              ),
              child: Text(
                'Maldives is an archipelagic state located in South Asia, situated in the Indian Ocean. It lies southwest of Sri Lanka and India, about 750 kilometres (470 miles; 400 nautical miles) from the Asian continent\'s mainland. The chain of 26 atolls stretches across the Equator from Ihavandhippolhu Atoll in the north to Addu Atoll in the south.\n\nComprising a territory spanning roughly 90,000 square kilometres (35,000 sq mi) including the sea, land area of all the islands comprises 298 square kilometres (115 sq mi), Maldives is one of the world\'s most geographically dispersed sovereign states and the smallest Asian country as well as one of the smallest Muslim-majority countries by land area and, with around 557,751 inhabitants, the 2nd least populous country in Asia. Malé is the capital and the most populated city, traditionally called the "King\'s Island" where the ancient royal dynasties ruled for its central location.',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 16,
                  color: aDarkBlue,
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1365&q=80',
  'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
  'https://images.unsplash.com/photo-1540202404-a2f29016b523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3266&q=80'
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({Key? key}) : super(key: key);

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imageList
              .map(
                (item) => Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: SizeConfig.blockSizeVertical! * 50,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: SvgPicture.asset(
                          _current == entry.key
                              ? 'assets/icons/carousel_indicator_enabled.svg'
                              : 'assets/icons/carousel_indicator_disabled.svg',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
