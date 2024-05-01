import 'package:flutter/material.dart';
import 'package:food_delivery/customs/custom_foodcategories.dart';
import 'package:food_delivery/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  greeting(),
                  style: const TextStyle(
                      color: AppColors.lightColor, fontSize: 18),
                ),
                const Padding(padding: EdgeInsets.only(right: 230)),
                const Icon(Icons.shopping_bag_outlined),
              ],
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  'Shlok Mestry',
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
            Row(children: [
              const Padding(padding: EdgeInsets.only(left: 20)),
              SizedBox(
                width: 390,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search your favourite food',
                        fillColor: AppColors.whiteColor,
                        filled: true,
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: const EdgeInsets.all(18),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            const SizedBox(
              height: 50,
            ),
            const Row(
              children: <Widget>[
                Expanded(
                    child: Divider(
                  color: AppColors.lightColor,
                )),
                Text(
                  "WHAT'S ON YOUR MIND?",
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
              height: 10,
            ),
            const SizedBox(height: 280, child: CustomFoodCategories())
          ],
        ),
      ),
    );
  }
}
