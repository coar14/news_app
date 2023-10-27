import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/const_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String currentDate = DateFormat('EEEE, d MMMM').format(DateTime.now());

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 56,
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
                    image: AssetImage('assets/avatar/male.png'),
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
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    currentDate,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w300,
                      color: aLightGray,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
