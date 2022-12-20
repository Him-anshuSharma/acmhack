import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled/ui/categoryList/data/category_data.dart';

class CategoryProvider extends ChangeNotifier {
  List<Categories> availableCategories = [
    Sofa,
    Desk,
    Bed,
    PhotoFrames,
    Runner,
  ];

  List<Categories> getAvailableCategories() {
    return availableCategories;
  }
}
