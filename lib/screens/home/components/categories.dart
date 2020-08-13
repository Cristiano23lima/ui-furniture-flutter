import 'package:flutter/material.dart';
import 'package:furniture/model/Categories.dart';
import 'package:furniture/screens/home/components/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    this.categories,
    Key key,
  }) : super(key: key);

  final List<Category> categories;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length, 
          (index) => CategoryCard(category: categories[index])
        )
      ),
    );
  }
}
