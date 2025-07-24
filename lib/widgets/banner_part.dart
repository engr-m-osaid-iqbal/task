import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerPart extends StatelessWidget {
  BannerPart({super.key});

  final CarouselSliderController _carouselController =
      CarouselSliderController();

  static const List<String> _bannerImages = [
    'lib/images/banner2.png',
    'lib/images/banner.png',
    'lib/images/banner2.png',
  ];

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return CarouselSlider(
      carouselController: _carouselController,
      options: carouselActions(17 / 8),
      items:
          _bannerImages.map((image) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image, fit: BoxFit.cover),
            );
          }).toList(),
    );
  }

  CarouselOptions carouselActions(double aspectRatiio) {
    return CarouselOptions(
      autoPlay: true,
      aspectRatio: aspectRatiio,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      autoPlayInterval: const Duration(seconds: 5),
      autoPlayAnimationDuration: const Duration(seconds: 2),
      autoPlayCurve: Curves.easeInOut,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
      scrollPhysics: const BouncingScrollPhysics(),
    );
  }
}
