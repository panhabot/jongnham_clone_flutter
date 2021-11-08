// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jongnham_clone/components/meunpage/filter.dart';
import 'package:jongnham_clone/components/meunpage/menu.dart';


class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
    int _currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/ 1.5,
              child: TextField(
          style: TextStyle(height: 0.5, color: Color(0xFFbdc6cf)),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Colors.white)
            ),
            labelText: 'Search restaurants',
            prefixIcon: Icon(Icons.search, color: Colors.red,size: 25.0,),
            filled:true,
            fillColor: Colors.white,
            hintStyle: TextStyle(backgroundColor: Colors.white),
            enabledBorder: UnderlineInputBorder(      
              borderSide: BorderSide(color: Colors.white),  
              borderRadius: BorderRadius.all(Radius.circular(12)) 
            ),  
          ),
        ),
            ),
            Icon(Icons.map, size: 25,),
            
          ],
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Filter(),
          Menu()
        ],
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