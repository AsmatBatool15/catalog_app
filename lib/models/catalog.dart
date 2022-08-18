import 'package:flutter/material.dart';

class CatalogModel {
  static final item = [
  Item(
    id: 1,
    name: "iPhone 12 pro",
    desc: "Apple iPhone 12th genertion",
    price: 999,
    color: "#33505a",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2eAHRTV8YZvnug-sUc3Lh2SrYSPw2fhwc4A&usqp=CAU",
  ),

  ];
}




class Item{
  final int id;
  final String name;
  final String desc;
  final num price ;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}


