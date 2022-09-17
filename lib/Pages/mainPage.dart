import 'package:conyonintern/Pages/searchPage.dart';
import 'package:conyonintern/Utils/bottomNav.dart';
import 'package:conyonintern/Pages/homePage.dart';
import 'package:conyonintern/colors.dart';
import 'package:flutter/material.dart';

import 'profilePage.dart';
import 'shopPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static const url = "assets/modelimage.jpg";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //Controller For List View
  late ScrollController scrollController;
  static int selectedBottom = 0;
  bool showTopbtn = false;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();

    //Set visibility of Floating button
    scrollController.addListener(() {
      setState(() {
        showTopbtn = scrollController.offset > 50 ? true : false;
      });
    });
  }

  //Bottom nav bar On Tap
  void onBottomTap(int idx) {
    setState(() {
      selectedBottom = idx;
    });
  }

  //List of Screens
  final List<List<Widget>> screens = [
    homePage(),
    searchPage(),
    shopPage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Button to go to top
      floatingActionButton: showTopbtn
          ? FloatingActionButton(
              child: const Icon(Icons.keyboard_arrow_up_rounded),
              onPressed: () {
                scrollController.animateTo(0,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.decelerate);
              })
          : null,

      //Bottom Nav
      bottomNavigationBar: BottomNav(
        onBottomTap: onBottomTap,
        selectedBottom: selectedBottom,
      ),
      appBar: myAppbar(),
      body: ListView(
        controller: scrollController,
        physics: const BouncingScrollPhysics(),

        //dynamic page loading
        children: screens[selectedBottom],
      ),
    );
  }

  AppBar myAppbar() {
    return AppBar(
      backgroundColor: MyColors.Transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FlutterLogo(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "Fluxstore",
              style: TextStyle(color: MyColors.Black),
            ),
          ),
        ],
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: MyColors.Black,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: MyColors.Black,
          ),
        ),
      ],
    );
  }
}
