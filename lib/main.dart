import 'package:flutter/material.dart';
import 'package:news_app/components/nav_bar.dart';
import 'package:news_app/screens/news_detail_screen.dart';
import 'package:news_app/screens/notif_screen.dart';
import 'package:news_app/screens/user_profile_screen.dart';
import 'const_style.dart';
import 'package:news_app/pages/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: aWhite,
        body: IndexedStack(
          index: selectedIndex,
          children: const [
            HomePage(),
            NewsDetailScreen(),
            NotifScreen(),
            UserProfile(),
          ],
        ),
        bottomNavigationBar: NavBar(
          selectedIndex: selectedIndex,
          onItemTapped: onItemTapped,
        ),
      ),
    );
  }
}