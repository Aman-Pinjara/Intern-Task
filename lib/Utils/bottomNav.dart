import 'package:conyonintern/colors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final Function(int) onBottomTap;
  final int selectedBottom;
  const BottomNav({required this.onBottomTap,required this.selectedBottom, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedBottom,
      selectedItemColor: MyColors.Amber,
      unselectedIconTheme: const IconThemeData(color: MyColors.Grey),
      onTap: onBottomTap,
      elevation: 5,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.card_travel_outlined,
          ),
          label: "Shop",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
