// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.pexels.com/photos/1051399/pexels-photo-1051399.jpeg?cs=srgb&dl=pexels-surabhi-siddaiah-1051399.jpg&fm=jpg',
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            width: 2500,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.network(item, fit: BoxFit.cover, width: 2000),
            ),
          ),
        ))
    .toList();
Widget Coupon(BuildContext context) {
  return Container(
    child: Column(
      children: [
        Container(
          child: const Align(
            alignment: FractionalOffset(0.05, 1.0),
            child: Text(
              "Coupon",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          child: CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                // aspectRatio: 2.0,
                height: 170.0,
                enlargeCenterPage: true),
            items: imageSliders,
          ),
        ),
      ],
    ),
  );
}
