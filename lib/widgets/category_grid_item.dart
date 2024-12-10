import 'package:flutter/material.dart';
import 'package:meals_riverpod/data/dummy_data.dart';
import 'package:meals_riverpod/screen/meals_screen.dart';

import '../model/category.dart';

class CategoryGridItem extends StatelessWidget {
  final Category category;
  final void Function() onSelectedCategory;
  const CategoryGridItem({super.key,required this.category, required this.onSelectedCategory,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectedCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.5),
                category.color.withOpacity(1)
              ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )
        ),
        child: Text(
          category.title
          ,style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
    );
  }
}
