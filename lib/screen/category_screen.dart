import 'package:flutter/material.dart';
import 'package:meals_riverpod/model/category.dart';
import 'package:meals_riverpod/screen/meals_screen.dart';
import 'package:meals_riverpod/widgets/category_grid_item.dart';

import '../data/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id)).toList();

    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) =>
            MealsScreen(title: category.title, meals: filteredMeals)));
  }

  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 5 / 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          // children: [
          //  ...availableCategories.map((category)=> CategoryGridItem(category: category)),
          //  //  for(final category in availableCategories)
          //  //    CategoryGridItem(category: category)
          //
          //
          // ]
          // ,
          // ),
          itemCount: availableCategories.length,
          itemBuilder: (context, index) => CategoryGridItem(
            category: availableCategories[index],
            onSelectedCategory: () {
              _selectCategory(context, availableCategories[index]);
            },
          ),
    );
  }
}
