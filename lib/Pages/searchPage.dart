import 'package:conyonintern/Pages/mainPage.dart';
import 'package:conyonintern/colors.dart';
import 'package:flutter/material.dart';

List<Widget> searchPage() {
  return <Widget>[
    tile(MainPage.url, "Music"),
    tile(MainPage.url, "Shopping"),
    tile(MainPage.url, "Movies"),
    tile(MainPage.url, "Coffee"),
    tile(MainPage.url, "Chill"),
  ];
}

Widget tile(String url, String text) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: SizedBox(
      height: 120,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(MyColors.Black.withOpacity(0.55), BlendMode.darken),
        )),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: MyColors.White),
          ),
        ),
      ),
    ),
  );
}
