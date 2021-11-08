
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class TestScreen extends StatefulWidget {
  const TestScreen({ Key? key,
   required this.image,
      required this.title,
      required this.rateStar,
      required this.viewCount,
      required this.rate,
      required this.review,
      required this.foodType,
      required this.location }) : super(key: key);
 final String image;
  final String title;
  final double rateStar;
  final int viewCount;
  final int rate;
  final int review;
  final String foodType;
  final String location;
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}