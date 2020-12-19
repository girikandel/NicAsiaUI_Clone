import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(1),
      height: 160,
      width: deviceSize.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black),
        ],
      ),
      child:Carousel(
        dotBgColor: Colors.white.withOpacity(0), 
        dotSize: 5,
        images: [
          Image.asset('assets/slide.jpg'),
          Image.asset('assets/slide1.jpg'),
        ],
      ),
    );
  }
}