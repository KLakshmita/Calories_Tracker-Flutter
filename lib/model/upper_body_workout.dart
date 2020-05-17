import 'package:flutter/material.dart';

class Breakfast{
  final String  imagePath, name, instruction;
  final Icon  icon1;

  Breakfast({this.icon1,this.imagePath, this.name, this.instruction});
  
}

final upperBody = [
  [
    Breakfast(
    imagePath: "",
      name: "Dosa",
      instruction: "1 medium Dosa Contains 230 Cal",
      icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
  
    ),
    
    Breakfast(
      imagePath: "",
      name: "Idli",
      instruction: "4 I dlis contain 150 Cal",  
      icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
  Breakfast(
      imagePath: "",
      name: "Utapam",
      instruction: "1 medium Utapam contains 240 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
    Breakfast(
      imagePath: "",
      name: "Pasta",
      instruction: "100 gm Pasta contains 350 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
    Breakfast(
      imagePath: "",
      name: "Aloo Parantha",
      instruction: "1 Aloo Parantha contains 320 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
   Breakfast(
      imagePath: "",
      name: "Green Salid",
      instruction: "100 gm Green Salid contains 90 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),

  
    Breakfast(
      imagePath: "assets/dosa.jpg",
      name: "Wheat Bread",
      instruction: "2 slice Bread contains 136 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
    Breakfast(
      imagePath: "assets/dosa.jpg",
      name: "Boiled Egg",
      instruction: "2 Boiled eggs contal 160 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
    Breakfast(
      imagePath: "assets/dosa.jpg",
      name: "Cow's Milk",
      instruction: "1 glass Milk contains 167 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
    Breakfast(
      imagePath: "assets/dosa.jpg",
      name: "Daliya",
      instruction: "1 bowl dalia contains 100 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
    Breakfast(
      imagePath: "assets/dosa.jpg",
      name: "Plain Roti",
      instruction: "2 Rotis contain 70 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
    Breakfast(
      imagePath: "assets/dosa.jpg",
      name: "Pav Bhaji",
      instruction: "2 Pav and Bhaji contains 280 Cal",
        icon1 : 
    Icon(
      Icons.add_circle_outline,
      color: Colors.white,
      size: 30.0,
    ),
    ),
  ],
];
