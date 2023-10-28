import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/const_style.dart';

class NavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const NavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: aWhite,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: widget.selectedIndex == 0
              ? SvgPicture.asset('assets/icons/home_selected_icon.svg')
              : SvgPicture.asset('assets/icons/home_unselected_icon.svg'),
          label: ' ',
        ),
        BottomNavigationBarItem(
          icon: widget.selectedIndex == 1
              ? SvgPicture.asset('assets/icons/bookmark_selected_icon.svg')
              : SvgPicture.asset('assets/icons/bookmark_unselected_icon.svg'),
          label: ' ',
        ),
        BottomNavigationBarItem(
          icon: widget.selectedIndex == 2
              ? SvgPicture.asset('assets/icons/notification_selected_icon.svg')
              : SvgPicture.asset('assets/icons/notification_unselected_icon.svg'),
          label: ' ',
        ),
        BottomNavigationBarItem(
          icon: widget.selectedIndex == 3
              ? SvgPicture.asset('assets/icons/profile_selected_icon.svg')
              : SvgPicture.asset('assets/icons/profile_unselected_icon.svg'),
          label: ' ',
        ),
      ],
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemTapped,
    );
  }
}
