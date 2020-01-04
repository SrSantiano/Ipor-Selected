import 'package:flutter/material.dart';

class CategoryListItem {
  CategoryListItem({
    Key key,
    @required this.categoryIcon,
    @required this.categoryName,
    @required this.availability,
    @required this.selected,
  
  });
  
  IconData categoryIcon;
  String categoryName;
  int availability;
  bool selected;
}