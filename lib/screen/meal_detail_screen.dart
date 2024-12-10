import 'package:flutter/material.dart';
import 'package:meals_riverpod/model/meal.dart';

class MealDetailScreen extends StatelessWidget {
  
  final Meal meal;
  
  const MealDetailScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(meal.imageUrl),
            const SizedBox(height: 15,),

            const Text('Ingredients',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.teal),),
            const SizedBox(height: 10,),
            // for(final ingerdient in meal.ingredients )
            //   Text(ingerdient)
            ...meal.ingredients.map((ingredient)=>Text(ingredient)),
            const SizedBox(height: 16,),

            const Text('Steps',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.teal),),
            const SizedBox(height: 10,),
            // for(final ingerdient in meal.ingredients )
            //   Text(ingerdient)
            ...meal.steps.map((step)=>Text(step)),

          ],
        ),
      ),
    );
  }
}
