// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

Widget Category(BuildContext context) {
  return IntrinsicHeight(
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
    Expanded(
        child: InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/menu');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
        decoration:
            BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey)),
        child: Column(
          children: [
            Icon(Icons.my_location, color: Colors.red),
            Text(
              'Near Me',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    )),
    Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        decoration:
            BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey)),
        child: Column(
          children: [
            Icon(Icons.restaurant, color: Colors.red),
            Text('Type of food',
                style: TextStyle(
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    ),
    Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
        decoration:
            BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey)),
        child: Column(
          children: [
            Icon(Icons.place, color: Colors.red),
            Text('Location', style: TextStyle(color: Colors.grey, fontSize: 13))
          ],
        ),
      ),
    ),
  ]));
}
