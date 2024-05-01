import 'package:flutter/material.dart';
import 'package:food_delivery/customs/custom_restaurantcategories.dart';
import 'package:food_delivery/screens/homepage.dart';
import '../theme/colors.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 85),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      icon: const Icon(Icons.arrow_back)),
                ),
                const Text(
                  'Restaurants',
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: <Widget>[
                Expanded(
                    child: Divider(
                  color: AppColors.lightColor,
                )),
                Text(
                  "RECOMMENDED FOR YOU",
                  style: TextStyle(color: AppColors.blackColor, fontSize: 16),
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.lightColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 600,
              child: const CustomRestaurantPage(),
            )
          ],
        ),
      ),
    );
  }
}
