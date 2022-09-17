import 'package:carousel_slider/carousel_slider.dart';
import 'package:conyonintern/Utils/imageutil.dart';
import 'package:conyonintern/colors.dart';
import 'package:conyonintern/constData.dart';
import 'package:flutter/material.dart';

class CaroselView extends StatefulWidget {
  const CaroselView({Key? key}) : super(key: key);

  @override
  State<CaroselView> createState() => _CaroselViewState();
}

class _CaroselViewState extends State<CaroselView> {
  late CarouselController _carouselController;
  int currentCaroselItem = 0;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> carouselNavigatorBars = [];

    //Carousel Navigator bars
    for (var i = 0; i < IMAGES.length; i++) {
      carouselNavigatorBars.add(GestureDetector(
        onTap: () {
          _carouselController.animateToPage(i);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            height: 5,
            width: 30,
            color: i == currentCaroselItem ? MyColors.Amber : MyColors.Grey,
          ),
        ),
      ));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          CarouselSlider.builder(
            carouselController: _carouselController,
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currentCaroselItem = index;
                });
              },
              height: 200,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
            ),
            itemCount: IMAGES.length,
            itemBuilder: ((context, index, realIndex) {
              return Imageutil(
                url: IMAGES[index],
                name: NAMES[index],
                subname: SUBNAMES[index],
              );
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: carouselNavigatorBars,
          )
        ],
      ),
    );
  }
}
