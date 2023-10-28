import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:news_app/components/article_list.dart';

import 'package:news_app/components/search_tags.dart';
import 'package:news_app/components/shorts_section.dart';
import 'package:news_app/const_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('EEEE, d MMMM').format(DateTime.now());

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 35,
          horizontal: 30,
        ),
        children: [
          Row(
            children: [
              Container(
                height: 49,
                width: 49,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('assets/pic/dp4.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    currentDate,
                    style: const TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w300,
                      color: aLightGray,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(borderRad),
              boxShadow: [
                BoxShadow(
                  color: aDarkBlue.withOpacity(0.052),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 25,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      fontFamily: 'Gellix',
                      fontSize: 12,
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      hintText: 'Search for article...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: aBlue, borderRadius: BorderRadius.circular(16.0)),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/search_icon.svg'),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TagLists(),
          const SizedBox(
            height: 30,
          ),
          const HorizontalListArticle(),
          const SizedBox(
            height: 30,
          ),
          const ShortSection(),
        ],
      ),
    );
  }
}
