// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {},
              child: Container(
                  width: 90.0,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Icon(
                          Icons.list,
                          color: Colors.black,
                        ),
                        Text('Filter', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ))),
          TextButton(
              onPressed: () {},
                child: Container(
                  width: 70.0,
                  height: 50,
                  alignment: Alignment.center,
                  // padding: EdgeInsets.symmetric( vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                  child: Text('Ranking', style: TextStyle(color: Colors.black)),
                ),
              ),
          TextButton(
              onPressed: () {},
              child: Container(
                width: 70.0,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
                child: Text('View', style: TextStyle(color: Colors.black)),
              )),
          TextButton(
              onPressed: () {},
              child: Container(
                width: 80.0,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
                child: Text('Price', style: TextStyle(color: Colors.black)),
              ))
        ],
      ),
    );
  }
}
