// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';


Widget Recommend() {
  return Column(
    children: [
      Container(
          child: const Align(
            alignment: FractionalOffset(0.05, 1.0),
            child: Text(
              "Recommended",
              style: TextStyle(fontSize: 15.0, color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
      ),
      Center(
        child: 
        Container(
          padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network('https://images.pexels.com/photos/2491273/pexels-photo-2491273.jpeg?cs=srgb&dl=pexels-matheus-gomes-2491273.jpg&fm=jpg',
                    fit: BoxFit.fill,
                    width: 115,
                    height: 150,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child:  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.confirmation_number_outlined, color: Colors.white,size: 35.0,),
                          Text('Most Used Coupon',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),)
                        ],
                      ),
                    )               
                  ),
                ),
                 
                ]
              ),
              Stack(
                children: [
                Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network('https://images.pexels.com/photos/1199956/pexels-photo-1199956.jpeg?cs=srgb&dl=pexels-valeria-boltneva-1199956.jpg&fm=jpg',
                    fit: BoxFit.fill,
                    width: 115,
                    height: 150,
                    ),
                    
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child:  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.stars, color: Colors.white,size: 35.0,),
                          Text('Most View',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),)
                        ],
                      ),
                    )               
                  ),
                ),
                ]
              ),
              Stack(
                children: [
                Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network('https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?cs=srgb&dl=pexels-valeria-boltneva-842571.jpg&fm=jpg',
                    fit: BoxFit.fill,
                    width: 115,
                    height: 150,
                    ),
                    
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child:  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.chat, color: Colors.white,size: 35.0,),
                          Text('Top Review',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),)
                        ],
                      ),
                    )               
                  ),
                ),
                ]
              ),
            ],
          ),
          
      ),
      ),
      
    ],
  );
}