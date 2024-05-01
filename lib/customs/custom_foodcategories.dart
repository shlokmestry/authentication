import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_categories.dart';
import 'package:food_delivery/screens/restaurantpage.dart';
import 'package:food_delivery/theme/colors.dart';

class CustomFoodCategories extends StatelessWidget {
  const CustomFoodCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 290,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemCount: foodcategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RestaurantPage()));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    color: AppColors.whiteColor,
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(foodcategories[index].image),
                          Text(foodcategories[index].name),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
