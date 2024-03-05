import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carasoul extends StatefulWidget {
  const Carasoul({super.key});

  @override
  State<Carasoul> createState() => _CarasoulState();
}

class _CarasoulState extends State<Carasoul> {
  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  Widget virtualimageSliderContent(
      String imageAssetName, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Image.network(
            imageAssetName,
            fit: BoxFit.fitHeight,
          )),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageAssetName),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> imageSlider = [];

    for (var i = 0; i < images.length; i++) {
      imageSlider.add(virtualimageSliderContent(images[i], context));
    }
    return Container(
      height: 500,
      child: CarouselSlider(
        items: imageSlider,
        options: CarouselOptions(
          height: 400.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 10 / 5,
          autoPlayCurve: Curves.decelerate,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 1.1,
        ),
      ),
    );
  }
}
