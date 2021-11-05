// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';


class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Page'),),
    );
  }
}