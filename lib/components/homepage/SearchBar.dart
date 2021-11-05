// ignore_for_file: non_constant_identifier_names, file_names, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';


Widget SearchBar(){
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
        child: Image.asset("assets/search.jpg"),
      ),
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: const [
            Icon(Icons.food_bank, size: 60.0, color: Colors.red,),
            Text("ចង់ញាំ", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
          ],
        )
      ),
      // ignore: prefer_const_constructors
      Padding(
        padding: EdgeInsets.fromLTRB(20.0,150.0, 20.0, 0),
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
    ],
  );
}