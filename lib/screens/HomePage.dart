// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../components/homepage/SearchBar.dart';
import '../components/homepage/Category.dart';
import '../components/homepage/Recommend.dart';
import '../components/homepage/Coupon.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ClipRect(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SearchBar(),
              Category(context),
              Recommend(),
              Coupon(context)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.withOpacity(.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
              label: 'Coupon', icon: Icon(Icons.airplane_ticket_outlined)),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Me',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
