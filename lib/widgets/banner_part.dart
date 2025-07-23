import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerPart extends StatefulWidget {
  const BannerPart({super.key});

  @override
  State<BannerPart> createState() => _BannerPartState();
}

class _BannerPartState extends State<BannerPart> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  final List<String> _bannerImages = [
    'lib/images/banner2.png',
    'lib/images/banner.png',
    'lib/images/banner2.png',
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return CarouselSlider(
      carouselController: _carouselController,
      options: CarouselOptions(
        autoPlay: true,
        height: screenHeight * 0.2,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(seconds: 2),
        autoPlayCurve: Curves.easeInOut,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        scrollPhysics: BouncingScrollPhysics(),
      ),
      items:
          _bannerImages.map((image) {
            return SizedBox(
              width: screenWidth,
              height: screenHeight * 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(image, fit: BoxFit.fill),
              ),
            );
          }).toList(),
    );
  }
}
