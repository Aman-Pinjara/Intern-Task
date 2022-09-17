import 'package:flutter/material.dart';

import '../Utils/actionBar.dart';
import '../Utils/caroselView.dart';
import 'mainPage.dart';
import '../Utils/rowImage.dart';
import '../Utils/wideImage.dart';

List<Widget> homePage() {
  return <Widget>[
    const ActionBar(),
    const CaroselView(),
    const WideImage(
      url: MainPage.url,
      name: "Amazing fit",
      subname: "40% Discount",
    ),
    const WideImage(
      url: MainPage.url,
      name: "New Fit",
      subname: "Buy 1 get 1",
    ),
    const RowImage(
      url: MainPage.url,
    ),
    const RowImage(url: MainPage.url),
    const WideImage(
      url: MainPage.url,
      name: "Best in class",
      subname: "Europian Design",
    ),
    const RowImage(url: MainPage.url),
  ];
}
