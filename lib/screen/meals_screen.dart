import 'package:flutter/material.dart';
import 'package:meals_riverpod/model/meal.dart';
import 'package:meals_riverpod/widgets/meal_item.dart';

import 'meal_detail_screen.dart';

class MealsScreen extends StatelessWidget {
  final String? title;
  final List<Meal> meals;
  const MealsScreen({super.key, this.title, required this.meals});

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => MealDetailScreen(meal: meal)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Uh oh ... nothing here!',
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Try Selection a different category',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          )
        ],
      ),
    );
    if(title==null){
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: meals.isEmpty
          ? content
          : ListView.builder(
              itemCount: meals.length,
              itemBuilder: (context, index) => MealItem(
                  meal: meals[index],
                  onSelectMeal: () {
                    selectMeal(context, meals[index]);
                  })),
    );
  }
}
