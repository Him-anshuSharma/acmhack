import 'package:flutter/material.dart';

class Categories {
  late String categoryName;
  late String categoryImage;
  Categories(this.categoryName,this.categoryImage);

  String getCategoryName(){
    return categoryName;
  }
}

Categories Sofa = Categories("sofa","assets/sofa1.png");
Categories Desk = Categories("desk", "assets/desk1.png");
Categories PhotoFrames = Categories("photo frames","assets/photoframe1.png");
Categories Bed = Categories("bed", "assets/bed1.png");
Categories Runner = Categories("runner","assets/runner1.png");
Categories Chair = Categories("chairs", "assets/chair1.png");
